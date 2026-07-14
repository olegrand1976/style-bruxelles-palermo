#!/usr/bin/env bash
# Domaines style-bruxelles-palermo.be + www → style-bruxelles-palermo-web (LB partagé Premedica).
# Usage: ./infra/gcp/setup-custom-domain.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lib/gcp-env.sh
source "${SCRIPT_DIR}/lib/gcp-env.sh"

SERVICE="${WEB_SERVICE}"
NEG_NAME="${NEG_NAME:-style-bruxelles-palermo-web-neg}"
BACKEND_NAME="${BACKEND_NAME:-style-bruxelles-palermo-web-backend}"
PATH_MATCHER="${PATH_MATCHER:-style-bruxelles-palermo}"
CERT_NAME="${CERT_NAME:-style-bruxelles-palermo-domains-cert}"

IFS=',' read -r -a ALL_HOSTS <<< "${SBP_ALL_HOSTS}"

gcloud config set project "$GCP_PROJECT_ID" >/dev/null

echo "=== style-bruxelles-palermo — domaines ${SBP_ALL_HOSTS} ==="

echo "→ NEG serverless (${NEG_NAME})"
if ! gcloud compute network-endpoint-groups describe "$NEG_NAME" \
  --region="$GCP_RUN_REGION" --project="$GCP_PROJECT_ID" &>/dev/null; then
  gcloud compute network-endpoint-groups create "$NEG_NAME" \
    --region="$GCP_RUN_REGION" \
    --network-endpoint-type=serverless \
    --cloud-run-service="$SERVICE" \
    --project="$GCP_PROJECT_ID"
fi

echo "→ Backend service (${BACKEND_NAME})"
if ! gcloud compute backend-services describe "$BACKEND_NAME" \
  --global --project="$GCP_PROJECT_ID" &>/dev/null; then
  gcloud compute backend-services create "$BACKEND_NAME" \
    --global \
    --load-balancing-scheme=EXTERNAL \
    --project="$GCP_PROJECT_ID"
  gcloud compute backend-services add-backend "$BACKEND_NAME" \
    --global \
    --network-endpoint-group="$NEG_NAME" \
    --network-endpoint-group-region="$GCP_RUN_REGION" \
    --project="$GCP_PROJECT_ID"
fi

echo "→ Règles hôte sur ${URL_MAP}"
if ! gcloud compute url-maps describe "$URL_MAP" --global --project="$GCP_PROJECT_ID" \
  --format='value(pathMatchers.name)' | tr ';' '\n' | grep -qx "$PATH_MATCHER"; then
  gcloud compute url-maps add-path-matcher "$URL_MAP" \
    --global \
    --path-matcher-name="$PATH_MATCHER" \
    --default-service="$BACKEND_NAME" \
    --new-hosts="${ALL_HOSTS[0]}" \
    --project="$GCP_PROJECT_ID"
  for host in "${ALL_HOSTS[@]:1}"; do
    gcloud compute url-maps add-host-rule "$URL_MAP" \
      --global \
      --hosts="$host" \
      --path-matcher-name="$PATH_MATCHER" \
      --project="$GCP_PROJECT_ID" 2>/dev/null \
      || echo "  (hôte ${host} déjà présent)"
  done
else
  for host in "${ALL_HOSTS[@]}"; do
    gcloud compute url-maps add-host-rule "$URL_MAP" \
      --global \
      --hosts="$host" \
      --path-matcher-name="$PATH_MATCHER" \
      --project="$GCP_PROJECT_ID" 2>/dev/null \
      || echo "  (hôte ${host} déjà présent)"
  done
fi

echo "→ Certificat managé (${CERT_NAME})"
if ! gcloud compute ssl-certificates describe "$CERT_NAME" \
  --global --project="$GCP_PROJECT_ID" &>/dev/null; then
  gcloud compute ssl-certificates create "$CERT_NAME" \
    --domains="${SBP_ALL_HOSTS}" \
    --global \
    --project="$GCP_PROJECT_ID"
fi

EXISTING_CERTS="$(gcloud compute target-https-proxies describe "$HTTPS_PROXY" \
  --global --project="$GCP_PROJECT_ID" \
  --format='value(sslCertificates.basename())' | tr ';' '\n' | tr ',' '\n' | sed '/^$/d' | sort -u)"
UPDATED_CERTS="$(printf '%s\n' "$EXISTING_CERTS" "$CERT_NAME" | sed '/^$/d' | sort -u | paste -sd, -)"
if ! echo ",${UPDATED_CERTS}," | grep -q ",${CERT_NAME},"; then
  UPDATED_CERTS="${UPDATED_CERTS},${CERT_NAME}"
fi
gcloud compute target-https-proxies update "$HTTPS_PROXY" \
  --global \
  --ssl-certificates="${UPDATED_CERTS}" \
  --project="$GCP_PROJECT_ID"

gcloud run services add-iam-policy-binding "$SERVICE" \
  --region="$GCP_RUN_REGION" \
  --member="allUsers" \
  --role="roles/run.invoker" \
  --project="$GCP_PROJECT_ID" \
  --quiet 2>/dev/null || true

cat <<EOF

OK — DNS OVH (zone style-bruxelles-palermo.be), enregistrements A → ${LB_IP} :

  @    (style-bruxelles-palermo.be)
  www

Vérifier certificat ACTIVE :
  gcloud compute ssl-certificates describe ${CERT_NAME} --global --format='yaml(managed.domainStatus)'

Tester :
  curl -I https://style-bruxelles-palermo.be/
  curl -I https://www.style-bruxelles-palermo.be/

EOF
