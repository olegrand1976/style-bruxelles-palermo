#!/bin/bash

echo "🧹 Nettoyage des dépendances et cache npm..."
rm -rf node_modules package-lock.json
npm cache clean --force

echo "📦 Réinstallation des dépendances..."
npm install --no-optional --legacy-peer-deps

echo "🔨 Build du projet..."
npm run build

echo "✅ Build terminé avec succès !"
