#!/bin/sh

# Telechargement de Wordpress
wget https://wordpress.org/latest.tar.gz
# Decompression de Wordpress
tar xzvf latest.tar.gz
# Deplacement des ressources dans le bon dossier
mv wordpress /var/www/localhost/wordpress
# Attribution de propriété Nginx pour qu' il puisse lire et écrire des fichiers WordPress afin de servir le site Web et d’effectuer des mises à jour automatiques.
chown -R www-data /var/www/localhost/wordpress
# Deplacement du fichier de configuration dans le nom de fichier que WordPress lit réellement
mv wp-config.php /var/www/localhost/wordpress