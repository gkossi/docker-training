# Infos sur le réalisateur
Session  : Bootcamp DevOps N°15 de Eazytraining

Period   : Septembre à Octobre

Nom      : GBENOU

Prénoms  : Kossi

LinkedIn : https://www.linkedin.com/in/gkossi/

# TP-2 : Gérez vos images Docker
- Créez votre propre image
- Testez votre image
- Gérez vos images sur le dockerhub
- Liez votre compte github au dockerhub (automatisation du build de l'image)

## TAF
L'image à créer dans ce TP sera tout simplement un serveur web qui va utiliser le code de notre site web.
Pour se faire :
- Il faudra installer le serveur web
- Copier les fichiers du site internet
- Mettre la commande de lancement du serveur web

## Les besoins
Mon travail consiste à :
1) Utiliser mon environnement de travail déjà installé dans le TP-1
2) Créer une image docker
3) Automatiser le build de l'image en liant mon compte github à mon dockerhub
4) Envoyer l'image docker sur mon registre dockerhub lié à mon compte github

## Mon plan
Je dois créer un projet sur github nommé ***webapp*** et le cloner en local. Ce projet va contenir un fichier ***Dockerfile***

- Le fichier ***Dockerfile*** va contenir les paramètres servant au build de mon image.

## QUELQUES INDICATIONS SUR LE PROJET
- Créer le projet sur github
- Cloner le projet 
- créer un fichier Dockerfile et l'éditer avec un éditeur de votre choix (j'utiliserai vi dans mon cas)

- Cloner le projet static-website-example
git clone https://github.com/gkossi/static-website-example.git

## QUELQUES INDICATIONS SUR LE FICHIER DOCKERFILE
Notre fichier Dockerfile doit contenir les instructions suivantes :
- Définir l'image de base : FROM ubuntu:18.04
- Définir celui qui sera amené à maintenir le code : MAINTAINER Kossi (gkossiboris@gmail.com)
- Mettre à jour la liste des dépots : RUN apt-get update -y
- Installer le serveur web nginx et l'outil git : RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
- Supprimer le contenu du répertoire /var/www/html/ s'il en contient : RUN rm -Rf /var/www/html/*
- Cloner le projet qui va servir à builder l'image : RUN git clone https://github.com/gkossi/static-website-example.git /var/www/html/
- Exposer sur le port 8085 : EXPOSE 8085
- Définir les commandes à lancer au démarrage du conteneur : ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

## QUELQUES INDICATIONS SUR LE BUILD DE L'IMAGE ET SON UTILISATION
- On va builder l'image : docker build -t webapp:v1 .
- Ensuite, on va tester l'image : docker run -d --name webapp -p 8085:8085 webapp:v1
- Ensuite, il faut tester si l'image est fonctionnelle en accédant au site static déployé
- Changer le tag de notre image : docker tag fd6b66f8789b gkossi/webapp:v1
- Après avoir testé l'image Docker, on va maintenant l'envoyer sur notre registry sur dockerhub :

docker login

docker push gkossi/webapp:v1

--FIN--







