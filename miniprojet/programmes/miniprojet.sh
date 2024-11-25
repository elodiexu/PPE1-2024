#!/bin/bash

if [ -z "$1" ]; then
    echo "Erreur : Vous devez spécifier un fichier en argument."
    exit 1
fi

output_file="tableau-fr.html"

echo '<!DOCTYPE html>' > $output_file
echo '<html lang="fr">' >> $output_file
echo '<head>' >> $output_file
echo '    <meta charset="UTF-8">' >> $output_file
echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> $output_file
echo '    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/versions/bulma-no-dark-mode.min.css">' >> $output_file
echo '    <title>Tableau des URLs</title>' >> $output_file
echo '</head>' >> $output_file
echo '<body>' >> $output_file
echo '    <section class="section">' >> $output_file
echo '        <div class="container">' >> $output_file
echo '            <h1 class="title has-text-centered has-text-info">Tableau des métadonnées HTTP</h1>' >> $output_file
echo '            <table class="table is-bordered is-hoverable is-striped">' >> $output_file
echo '                <thead>' >> $output_file
echo '                    <tr>' >> $output_file
echo '                        <th>Ligne</th>' >> $output_file
echo '                        <th>Code HTTP</th>' >> $output_file
echo '                        <th>URL</th>' >> $output_file
echo '                        <th>Nombre de mots</th>' >> $output_file
echo '                        <th>Encodage</th>' >> $output_file
echo '                    </tr>' >> $output_file
echo '                </thead>' >> $output_file
echo '                <tbody>' >> $output_file

numero_ligne=1

while read -r ligne; do
    code_http=$(curl -o /dev/null -s -w "%{http_code}" "$ligne")
    encodage=$(curl -sI "$ligne" | grep -i "content-type" | sed -n "s/.*charset=//p")
    if [ -z "$encodage" ]; then
        encodage="Non spécifié"
    fi
    nombre_mots=$(curl -s "$ligne" | wc -w)
    echo '                    <tr>' >> $output_file
    echo "                        <td>${numero_ligne}</td>" >> $output_file
    echo "                        <td>${code_http}</td>" >> $output_file
    echo "                        <td><a href=\"${ligne}\" target=\"_blank\">${ligne}</a></td>" >> $output_file
    echo "                        <td>${nombre_mots}</td>" >> $output_file
    echo "                        <td>${encodage}</td>" >> $output_file
    echo '                    </tr>' >> $output_file
    ((numero_ligne++))
done < "$1"

echo '                </tbody>' >> $output_file
echo '            </table>' >> $output_file
echo '        </div>' >> $output_file
echo '    </section>' >> $output_file
echo '</body>' >> $output_file
echo '</html>' >> $output_file

echo "Le tableau HTML a été généré dans le fichier ${output_file}."