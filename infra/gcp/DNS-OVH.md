# DNS OVH — style-bruxelles-palermo.be

Zone DNS à configurer dans **OVH Manager → Domaines → style-bruxelles-palermo.be → Zone DNS**.

## Enregistrements à créer / modifier

| Type | Sous-domaine | Cible | TTL | Action |
|------|--------------|-------|-----|--------|
| **A** | `@` (racine) | `34.54.99.89` | 300 | Remplacer `141.94.106.145` |
| **A** | `www` | `34.54.99.89` | 300 | Remplacer `141.94.106.145` |

## Enregistrements à conserver

Ne pas modifier les enregistrements **MX**, **TXT** (SPF, DKIM, DMARC), **SRV** (messagerie).

## Après bascule validée

1. Remonter le TTL à **3600** (1 h).
2. Arrêter le conteneur sur le VPS OVH : `docker stop nuxt-container && docker rm nuxt-container`.
3. Vérifier le certificat GCP :

```bash
gcloud compute ssl-certificates describe style-bruxelles-palermo-domains-cert \
  --global --project=premedica-prod-2025 \
  --format='yaml(managed.domainStatus)'
```

Statut attendu : `ACTIVE` pour les deux domaines (15 min à 24 h après propagation DNS).

## Validation

```bash
dig +short style-bruxelles-palermo.be A      # → 34.54.99.89
dig +short www.style-bruxelles-palermo.be A  # → 34.54.99.89

curl -I https://style-bruxelles-palermo.be/
curl -I https://www.style-bruxelles-palermo.be/
curl -I https://style-bruxelles-palermo.be/nl/
```

## Rollback

Remettre temporairement les enregistrements A vers `141.94.106.145` si besoin.
