# Journal de bord du projet encadré
<<<<<<< HEAD

Cette ligne doit rester après correction



# git
 git init  
·Initialise un nouveau dépôt Git dans un répertoire.  
·Crée un répertoire .git contenant les fichiers nécessaires pour suivre l’historique des modifications.  


 git clone <url>  
·Clone un dépôt Git distant sur la machine locale.  
·Copie un projet existant pour travailler dessus localement.  

 git add <fichier>  
·Ajoute des fichiers au staging area (index).  
·Prépare les fichiers pour être commités dans l’historique.  


 git commit -m "<message>"  
 ·Enregistre les modifications préparées (staged) dans l’historique du dépôt.  
 ·Ajoute un message pour décrire les changements apportés.  


 git status  
·Affiche l’état actuel du dépôt.  
·Montre les fichiers modifiés, ajoutés ou non suivis.  


 git pull   
·Récupère et intègre les modifications d’un dépôt distant dans la branche actuelle.   
·Télécharge les mises à jour et les fusionne automatiquement.   


 git push   
·Envoie les modifications locales vers le dépôt distant.   
·Utile pour partager votre travail avec d’autres collaborateurs.   


 git stash  
·Enregistre temporairement les modifications sans les commit.  
·Permet de sauvegarder un travail en cours sans l’ajouter à l’historique.  



# Séance 3
<<<<<<< HEAD  
## exercices git  
>>>>>>> 09fcbdd9f85c092d310a9b857a4b88c45e09ef8c


# Séance 4  

 echo  
	•	Usage : Affiche du texte ou le contenu d’une variable.  
	•	Exemple :  
echo "Bonjour, monde !"  
echo $HOME  

 grep  
	•	Usage : Recherche des motifs dans un fichier ou un flux.  
	•	Exemple :  
grep "motif" fichier.txt   # Cherche les lignes contenant "motif"  
grep -r "motif" .          # Recherche récursive dans un dossier  

sort  
	•	Usage : Trie les lignes d’un fichier.  
	•	Exemple :  

·sort fichier.txt        # Trie par ordre alphabétique  
·sort -n fichier.txt     # Trie par ordre numérique  
·sort -r fichier.txt     # Trie en ordre inverse  

uniq  
	•	Usage : Élimine les lignes dupliquées consécutives.  
	•	Exemple :  

·uniq fichier.txt        # Supprime les doublons  
·sort fichier.txt | uniq -c  # Compte le nombre d’occurrences de chaque ligne  

# Séance5
#!/usr/bin/bash  

if [ $# -ne 1 ]  

fi：fin de if  

#Miniprojet
<<<<<<< HEAD
#excercice 1
1. Pourquoi ne pas utiliser cat ?
On n’utilise pas cat parce que la commande read permet de lire le fichier ligne par ligne. Utiliser cat enverrait tout le contenu du fichier en une seule fois à read, ce qui n’est pas optimal pour les gros fichiers. En lisant directement avec while read, on économise de la mémoire et c’est plus efficace.

# Séance 6  
 lynx：lynx est un navigateur web en mode texte utilisé dans le terminal.  

Usage :
	•	Naviguer ou afficher le contenu d’une page web.

Commandes de base :
	•	Ouvrir une page web :

lynx https://exemple.com

 curl：curl est un outil en ligne de commande pour transférer des données depuis ou vers un serveur.
	Télécharger ou envoyer des données via des protocoles comme HTTP, HTTPS, FTP, etc.

Commandes de base :
	•	Télécharger une page web :

curl https://exemple.com

	•	Télécharger et enregistrer dans un fichier :

curl -o sortie.html https://exemple.com

	•	Télécharger plusieurs fichiers :

curl -O https://exemple.com/fichier1.txt -O https://exemple.com/fichier2.txt

	•	Envoyer des données en POST :

curl -X POST -d "param1=valeur1&param2=valeur2" https://exemple.com/api

	•	Télécharger un fichier avec suivi de redirection :

curl -L -o fichier.txt https://exemple.com/redirection

	•	Afficher uniquement les en-têtes :

curl -I https://exemple.com

# Séance 9
<a href"..."> </a> : pour ajouter des liens ou hyperliens
<h1></h1> ...` entête niveau 1 