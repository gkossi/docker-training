# Infos sur le réalisateur
Session  : Bootcamp DevOps N°15 de Eazytraining

Period   : Septembre à Octobre

Nom      : GBENOU

Prénoms  : Kossi

LinkedIn : https://www.linkedin.com/in/gkossi/


# TP-3 : Gérez votre stockage persistent
- Créez un volume de type volumes
- Créez deux conteneurs ubuntu (ubuntu1 et ubuntu2) et montez le volume créé dans le répertoire /tmp de chacun des conteneurs ubuntu
- Créez un fichier toto.txt dans le répertoire /tmp de ubuntu1 et vérifie qu'il est bien présent dans /tmp de ubuntu2
- Créez un conteneur apache dont le site internet affiché sera celui hébergé ici : https://github.com/diranetafen/static-website-example.git (utilisez le volume de type bind mount), n'oubliez pas de vérifier que le site est bien accessible


## TAF

###☺ ***UTILISATION DU STOCKAGE DE TYPE VOLUMES***
- Création du volume :

docker volume create --name ggs-volume

- Création du 1er conteneur :

docker run -itd --name ubuntu1 -v ggs-volume:/tmp ubuntu /bin/bash

- Création du 2è conteneur :

docker run -itd --name ubuntu2 -v ggs-volume:/tmp ubuntu /bin/bash

- Se connecter au 1er conteneur et créér le fichier toto.txt :

docker exec -it ubuntu1 /bin/bash

touch /tmp/toto.txt

- Se connecter au 2è conteneur et vérifier sur le fichier créé dans le 1er contenur est présent :

docker exec -it ubuntu2 /bin/bash

ls /tmp/


###☺ ***UTILISATION DU STOCKAGE DE BIND MOUNT***

- Sur notre machine locale, on va cloner le projet static-website-example de Dirane Tafen :

git clone https://github.com/diranetafen/static-website-example.git

- On va créer un conteneur en lui montant en mode bind mount, mon projet :

docker run -dit --name webserver -p 8080:80 -v ${PWD}/static-website-example:/usr/local/apache2/htdocs httpd










