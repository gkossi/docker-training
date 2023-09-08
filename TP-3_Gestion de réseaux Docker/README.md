# Infos sur le réalisateur
Session  : Bootcamp DevOps N°15 de Eazytraining

Period   : Septembre à Octobre

Nom      : GBENOU

Prénoms  : Kossi

LinkedIn : https://www.linkedin.com/in/gkossi/

# TP-3 : Gérez vos réseaux Docker
- Créez un réseau docker de type bridge
- Créez deux conteneurs ubuntu dans le réseau créé précédemment
- Installer la commande ping et tentez de pinguer les conteneurs entre eux avec leur ip et par leur nom

## TAF
- Création du réseau :

docker network create --diver=bridge --subnet=192.168.10.0/24 ggs-net

- Création du 1er conteneur :

docker run -itd --name ubuntu1 ubuntu /bin/bash

- Création du 2è conteneur :

docker run -itd --name ubuntu2 ubuntu /bin/bash

- Se connecter au 1er conteneur et ping le 2è conteneur :

docker exec -it ubuntu1 /bin/bash

apt-get update && apt-get install iputils-ping && apt-get install net-tools

ping ubuntu2

- Se connecter au 2è conteneur et ping le 1er conteneur :

docker exec -it ubuntu2 /bin/bash

apt-get update && apt-get install iputils-ping && apt-get install net-tools

ping ubuntu1









