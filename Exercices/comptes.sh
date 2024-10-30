#!/bin/bash
# Script pour compter les lignes contenant "Location" dans les fichiers *.ann pour chaque année
cd ~/ann
for year in 2016 2017 2018; do
    count=$(grep 'Location' ${year}*.ann | wc -l)
    echo "Année $year : $count"
done
