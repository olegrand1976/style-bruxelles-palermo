#!/bin/bash

echo "🔍 Test de connectivité SSH vers le serveur de déploiement"

# Variables (à définir dans GitLab CI/CD variables)
HOST="141.94.106.145"
USER="rocky"

echo "📡 Test de connectivité réseau..."
ping -c 3 $HOST

echo "🔑 Test de scan SSH..."
ssh-keyscan -H $HOST

echo "🔐 Test de connexion SSH (avec clé)..."
if [ -n "$SSH_PRIVATE_KEY" ]; then
    eval $(ssh-agent -s)
    echo "$SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add -
    ssh -o ConnectTimeout=10 -o BatchMode=yes $USER@$HOST "echo 'Connexion SSH réussie ! 🎉'"
else
    echo "❌ Variable SSH_PRIVATE_KEY non définie"
fi

echo "✅ Test terminé"
