# Docker .NET avec Dockerfile

Ce projet sert d'exemple pour démontrer la facilté de conteneuriser une application .NET avec Docker, à l'aide d'un Dockerfile.

## Pré-requis

Une installation de Docker >= 17.03 sur une machine Windows, Linux ou Mac : https://docs.docker.com/get-docker/

## Technologies utilisées

* .NET Core CLI
* Docker

## Comment exécuter le projet

### 1. Créer l'image

#### 1ère méthode : Créer l'image depuis les sources en local

Dans une invite de commande, récupérer le code source avec `git clone https://github.com/pierreeymeryciao/docker-dotnet-with-dockerfile.git`

Se placer dans le nouveau répertoire créé par cette commande.

Exécuter la commande `docker build -t <nom de l'image> .`

#### 2ème méthode : Créer l'image depuis git

Dans une invite de commande, exécuter la commande `docker build -t <nom de l'image> https://github.com/pierreeymeryciao/docker-dotnet-with-dockerfile.git`

### 2. Exécuter l'image dans un conteneur

Lorsque la commande `docker build` a terminé de s'exécuter, on peut maintenant lancer un nouveau conteneur à partir de la commande suivante :
`docker run -d --name <nom du conteneur> -p 8080:80 <nom de l'image>`

L'application est maintenant accessible depuis l'adresse `localhost:8080`