#!/bin/bash

# Définir les options d'environnement
echo "Choisissez l'environnement dans lequel vous voulez lancer l'application :"
echo "1. Développement"
echo "2. Staging"
echo "3. Production"
read -p "Entrez le numéro de votre choix : " ENV_CHOICE

# Définir les variables d'environnement
case $ENV_CHOICE in
  1)
    ENV="development"
    API_URL="https://api-dev.example.com"
    ;;
  2)
    ENV="staging"
    API_URL="https://api-staging.example.com"
    ;;
  3)
    ENV="production"
    API_URL="https://api.example.com"
    ;;
  *)
    echo "Choix invalide. Par défaut, l'environnement sera développement."
    ENV="development"
    API_URL="https://api-dev.example.com"
    ;;
esac

# Exporter les variables d'environnement
export REACT_NATIVE_ENV=$ENV
export REACT_NATIVE_API_URL=$API_URL

# Afficher les informations de démarrage
echo "Environnement sélectionné : $ENV"
echo "API_URL : $API_URL"

# Lancer l'application
echo "Démarrage de l'application avec Expo..."
expo start