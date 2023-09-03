# TP-1 : Installation et Test de Docker
- Installation de Docker sur Centos
- Tache de post Installation
- Vérification de l'Installation
- Utiliser la documentation Docker afin d'etre à jour
- Lancement de votre premier coteneur (nginx)
- Réaliser la meme tache sur la plateforme de Labs
- Utilisation des variables d'environnement

-----------------------------------------------
Session  : Bootcamp DevOps N°15 de Eazytraining
Period   : Septembre à Octobre
Nom      : GBENOU
Prénoms  : Kossi
LinkedIn : https://www.linkedin.com/in/gkossi/
-----------------------------------------------

## TAF
Ici dans ce TP, j'ai pour mission de mettre en place un environnement servant de travaux avec Docker.

## Les besoins
Mon travail consiste à :
1) Utiliser Virtualbox comme hyperviseur pour créer la machine virtuell
2) Utiliser Vagrant pour proisionner la VM
3) Installer Docker sur la VM 

## Mon plan
Dans un premier temps, je dois créer un répertoire nommé ***docker-installation*** qui va contenir deux fichiers principaux : ***install_docker.sh*** et ***Vagrantfile***

- Le fichier ***install_docker.sh*** va contenir le script d'installation de Docker
- Le fichier ***vagrantfile*** va contenir les paramètres servant la création de la machine virtuelle.

## Quelques indications pour le fichier "install_docker.sh"
- Mettre à jour la liste des dépots
- installer git
- Récupérer le script d'installation de docker (ici, nous allons utiliser la méthode d'installation par script)
- Exécuter le script
- Ajout de l'utilisateur vagrant au groupe docker
- Activer le démarrage automatique du service docker au démarrage de la machine virtuelle
- Démarrer le service docker
- Récupérer le script d'installation de docker-compose
- Donner le droit d'exécution sur le script à l'utilisateur
- Exécuter le script


## Quelques indications pour le fichier "Vagrantfile"
- Image de base        => geerlingguy/centos7
- Hostname             => docker
- CPU                  => 2
- RAM                  => 2Go
- Type d'adressage IP  => static
- IP fixe privé        => 192.168.99.20






