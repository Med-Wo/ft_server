#!/bin/sh

# Téléchargement de phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
# Installation de phpMyAdmin
tar -zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
# Déplacement des fichiers sources
mv phpMyAdmin-5.0.2-all-languages /var/www/localhost/phpMyAdmin
# Attribution de propriété a Nginx pour qu' il puisse lire et écrire des fichiers phpMyAdmin afin de servir le site Web et d’effectuer des mises à jour automatiques.
chown -R www-data:www-data /var/www/localhost/phpMyAdmin
# Configurer phpMyAdmin
cp config.inc.php /var/www/localhost/phpMyAdmin

