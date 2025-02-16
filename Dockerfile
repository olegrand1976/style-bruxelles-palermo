# Utiliser l'image officielle Node.js 18 en version Alpine
FROM node:18-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier uniquement le package.json et le package-lock.json (si présent)
COPY package.json package-lock.json* ./

# Installer les dépendances
RUN npm install

# Copier le reste du code de l'application
COPY . .

# Exposer le port 3000 (par défaut Nuxt écoute sur ce port)
EXPOSE 3000

# Démarrer le serveur de développement Nuxt
CMD ["npm", "run", "dev"]
