# FT_SERVER

## Description

Le projet "ft_server" est un projet scolaire individuel sur le campus de [42 Paris] (https://www.42.fr).
Il s'agit d'un projet qui vous demande de faire fonctionner un serveur sous Debian Buster via Docker avec un fonctionnement sous Wordpress, Phpmyadmin et Mysql.

## Introduction

Docker LEMP environnement de développement pour WordPress. A des fins d'apprentissage uniquement, **non destiné à la production**.

## Composants

* Debian 10
* Nginx
* PHP-FPM (PHP 7.3)
* MariaDB (MySQL)
* phpMyAdmin
* WordPress

### Structure du système de fichiers Linux
Nous faisons tourner notre projet sous Debian 10 qui utilise le noyau Linux.
[Plus de détails ici](https://www.howtogeek.com/117435/htg-explains-the-linux-directory-structure-explained/)

## PHP MyAdmin
PhpMyAdmin est un outil logiciel libre écrit en PHP, destiné à gérer l'administration de MySQL sur le Web.
Il permettra de relier nos bases de données avec le reste de nos services.

## Wordpress
WordPress (WordPress.org) est un système de gestion de contenu (CMS) basé sur PHP et MySQL qui est généralement utilisé avec la base de données MySQL ou MariaDB

## Utilisation

### Conditions préalables

Docker : https://docs.docker.com/engine/install/

### Execution des commandes

* "docker build -t [NOM_DE_L'IMAGE] ." construit l'image
* "docker run -ti -p 80:80 -p 443:443 [NOM_DE_L'IMAGE]" lamce le conteneur en mode interactif et ecoute les ports 80 et 443 (http et https)
* "sh autoindex.sh "on" ou "off" permet d'activer l'index automatique

### Remerciements

Projet scolaire réalisé à [42 Paris] (https://www.42.fr).
