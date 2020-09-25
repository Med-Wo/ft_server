#!/bin/sh

# Configuration de Nginx
sh scripts/config_nginx.sh

# Generation de certificat auto-signe et cle priver
sh scripts/generate_ssl.sh 

# Téléchargement, installation et configuration de phpMyAdmin
sh scripts/init_phpmyadmin.sh

# Téléchargement, installation et configuration de Wordpress
sh scripts/init_wordpress.sh

# Initialisation de la database phpMyAdmin et Wordpress
sh /srcs/scripts/init_db.sh

bash