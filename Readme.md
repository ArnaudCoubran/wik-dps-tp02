ReadMe.md

# Dockerisation d'une Application Rust

Ce dépôt contient un Dockerfile permettant de containeriser une application Rust. Le Dockerfile utilise des constructions à plusieurs étapes pour créer une image légère ne contenant que les artefacts nécessaires.

## Prérequis

- Docker installé sur votre machine.

## Construction de l'Image Docker

Pour construire l'image Docker, accédez au répertoire contenant le Dockerfile et exécutez la commande suivante :

docker build -t my_rust_app

## Lancer l'image docker

docker run my_rust_app



## Le Dockerfilebis se compose de deux étapes :

Construction de l'application Rust

Utilise l'image de base rust:1.67 pour construire l'application Rust.
Crée un utilisateur myapp pour exécuter l'application dans le conteneur.
Copie le code source dans le conteneur, ajuste les permissions et construit l'application avec la commande cargo build --release.
Création d'une image légère

Utilise l'image de base debian:latest.
Copie l'exécutable de l'application à partir de l'étape précédente dans le conteneur.
Définit l'utilisateur à myapp pour une exécution sécurisée de l'application.
