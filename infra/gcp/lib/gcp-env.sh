# Defaults GCP — style-bruxelles-palermo

GCP_PROJECT_ID="${GCP_PROJECT_ID:-${PROJECT_ID:-premedica-prod-2025}}"
GCP_RUN_REGION="${GCP_RUN_REGION:-europe-west9}"
GCP_AR_REGION="${GCP_AR_REGION:-europe-west1}"
AR_REPO="${AR_REPO:-style-bruxelles-palermo}"
SERVICE_ACCOUNT="${SERVICE_ACCOUNT:-style-bruxelles-palermo-run}"
WEB_SERVICE="${WEB_SERVICE:-style-bruxelles-palermo-web}"

SBP_CUSTOM_DOMAIN="${SBP_CUSTOM_DOMAIN:-style-bruxelles-palermo.be}"
SBP_EXTRA_HOSTS="${SBP_EXTRA_HOSTS:-www.style-bruxelles-palermo.be}"
SBP_PUBLIC_SITE_URL="${SBP_PUBLIC_SITE_URL:-https://${SBP_CUSTOM_DOMAIN}}"
SBP_ALL_HOSTS="${SBP_ALL_HOSTS:-${SBP_CUSTOM_DOMAIN},${SBP_EXTRA_HOSTS}}"

LB_IP="${LB_IP:-34.54.99.89}"
URL_MAP="${URL_MAP:-staging-premedica-care-urlmap}"
HTTPS_PROXY="${HTTPS_PROXY:-staging-premedica-care-proxy}"

GITHUB_DEPLOY_SA="${GITHUB_DEPLOY_SA:-github-sbp-deploy}"

WIF_POOL_ID="${WIF_POOL_ID:-github-pool}"
WIF_PROVIDER_ID="${WIF_PROVIDER_ID:-github-provider}"
PROJECT_NUMBER="${PROJECT_NUMBER:-237481297060}"
GCP_WORKLOAD_IDENTITY_PROVIDER="${GCP_WORKLOAD_IDENTITY_PROVIDER:-projects/${PROJECT_NUMBER}/locations/global/workloadIdentityPools/${WIF_POOL_ID}/providers/${WIF_PROVIDER_ID}}"

ar_image() {
  local name="$1"
  local tag="${2:-latest}"
  echo "${GCP_AR_REGION}-docker.pkg.dev/${GCP_PROJECT_ID}/${AR_REPO}/${name}:${tag}"
}
