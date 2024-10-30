#!/bin/bash
# Script pour compter les entités d'un type donné pour chaque année

entity=$1

for year in 2016 2017 2018; do
    ./compte_par_type.sh "$year" "$entity"
done
