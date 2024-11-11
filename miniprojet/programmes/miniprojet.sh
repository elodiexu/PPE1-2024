#!/bin/bash

# Vérification de la présence d'un fichier en argument
if [ -z "$1" ]; then
    echo "Erreur : Vous devez spécifier un fichier en argument."
    exit 1
fi

# Initialisation du compteur de lignes
numero_ligne=1

# Lecture du fichier ligne par ligne
while read -r ligne; do
    # Récupération du code HTTP
    code_http=$(curl -o /dev/null -s -w "%{http_code}" "$ligne")

    # Récupération de l'encodage de la page
    encodage=$(curl -sI "$ligne" | grep -i "content-type" | sed -n "s/.*charset=//p")
    if [ -z "$encodage" ]; then
        encodage="Non spécifié"
    fi

    # Comptage du nombre de mots dans la page
    nombre_mots=$(curl -s "$ligne" | wc -w)

    # Affichage du numéro de ligne, URL, code HTTP, nombre de mots et encodage
    echo -e "${numero_ligne}\t${ligne}\t${code_http}\t${nombre_mots}\t${encodage}"
    ((numero_ligne++))  # Incrémentation du numéro de ligne
done < "$1"