FROM debian:buster

LABEL Medhi Ravily <mravily@student.42.fr>

# Apt-get est un outil logiciel à utiliser en ligne de commande.
# Il permet d'effectuer l'installation et la désinstallation de paquets en provenance d'un dépôt APT. 

# L'option update met à jour la liste des fichiers disponibles dans les dépôts APT 
RUN apt-get update

# L'option upgrade met à jour tous les paquets installés sur le système vers les dernières versions (couramment utilisé).
RUN apt-get upgrade -y 

# NGINX est un serveur web open-source
RUN apt-get install -y nginx
# Wget est un client HTTP, HTTPS et FTP qui permet de récupérer du contenu d’un serveur Web ou FTP.
RUN apt-get install -y wget
# MariaDB est un système de gestion de base de données
RUN apt-get install -y mariadb-server

# Installation des packages PHP
	# PHP-MYSQL fournit un module MySQl pour PHP qui permet à PHP de communiquer avec des bases de données basées sur MySQL.
RUN apt-get install -y php-mysql
	# PHP-CLI fournit un shell interactif permettant d'exécuter du code PHP
RUN apt-get install -y php-cli
	# PHP-CURL fournit le module CURL pour PHP.
	# CURL est une interface en ligne de commande, destinée à récupérer le contenu d'une ressource accessible par un réseau informatique.
RUN apt-get install -y php-curl
	# PHP-INTL fournit le(s) module(s) Internationalisation pour PHP
RUN apt-get install -y php-intl
	# PHP-FPM est une interface SAPI permettant la communication entre un serveur Web et PHP.
RUN apt-get install -y php-fpm
	# Packages pour phpMyAdmin
		# PHP-JSON fournit le(s) module(s) JSON pour PHP
RUN apt-get install -y php-json
		#PHP-MBSTRING fournit le(s) module(s) MBSTRING pour PHP. 
RUN apt-get install -y php-mbstring

# Créer un dossier srcs dans le conteneur pour y copier tout les fichiers utiles.
RUN mkdir srcs

# Copie du contenu du dossier srcs present sur l'hote dans le dossier srcs du conteneur
COPY srcs srcs

# Permet de spécifier dans quel dossier se placer au lancement du container
WORKDIR /srcs

CMD bash /srcs/container_entrypoint.sh