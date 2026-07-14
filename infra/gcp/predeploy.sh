#!/usr/bin/env bash
# Prépare Artifact Registry, service account et IAM pour style-bruxelles-palermo sur Cloud Run.
# Usage: ./infra/gcp/predeploy.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lib/gcp-env.sh
source "${SCRIPT_DIR}/lib/gcp-env.sh"

gcloud config set project "$GCP_PROJECT_ID" >/dev/null

echo "=== style-bruxelles-palermo predeploy — ${GCP_PROJECT_ID} ==="

SA_EMAIL="${SERVICE_ACCOUNT}@${GCP_PROJECT_ID}.iam.gserviceaccount.com"
CB_SA="$(gcloud projects describe "$GCP_PROJECT_ID" --format='value(projectNumber)')@cloudbuild.gserviceaccount.com"

echo "→ IAM Cloud Build"
for role in roles/run.admin roles/artifactregistry.writer roles/iam.serviceAccountUser; do
  gcloud projects add-iam-policy-binding "$GCP_PROJECT_ID" \
    --member="serviceAccount:${CB_SA}" --role="$role" --quiet >/dev/null 2>&1 || true
done

if ! gcloud iam service-accounts describe "$SA_EMAIL" --project="$GCP_PROJECT_ID" >/dev/null 2>&1; then
  echo "→ CREATE service account ${SERVICE_ACCOUNT}"
  gcloud iam service-accounts create "$SERVICE_ACCOUNT" \
    --display-name="style-bruxelles-palermo Cloud Run" --project="$GCP_PROJECT_ID" --quiet
fi

gcloud iam service-accounts add-iam-policy-binding "$SA_EMAIL" \
  --member="serviceAccount:${CB_SA}" --role="roles/iam.serviceAccountUser" --quiet >/dev/null 2>&1 || true

for role in roles/run.invoker roles/run.developer roles/run.viewer; do
  gcloud projects add-iam-policy-binding "$GCP_PROJECT_ID" \
    --member="serviceAccount:${SA_EMAIL}" --role="$role" --quiet >/dev/null 2>&1 || true
done

if ! gcloud artifacts repositories describe "$AR_REPO" --location="$GCP_AR_REGION" --project="$GCP_PROJECT_ID" >/dev/null 2>&1; then
  echo "→ CREATE Artifact Registry ${AR_REPO}"
  gcloud artifacts repositories create "$AR_REPO" \
    --repository-format=docker \
    --location="$GCP_AR_REGION" \
    --description="style-bruxelles-palermo Nuxt web" \
    --project="$GCP_PROJECT_ID" \
    --quiet
fi

cat <<EOF

OK — predeploy terminé.

Prochaines étapes :
  ./infra/gcp/setup-github-deploy.sh olegrand1976/style-bruxelles-palermo
  gcloud builds submit --config=infra/gcp/cloudbuild.yaml --project=${GCP_PROJECT_ID}
  ./infra/gcp/setup-custom-domain.sh

EOF
