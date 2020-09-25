#!/bin/sh

# Creation des dossiers qui vont contenir les ressources
mkdir -p /var/www/localhost/html/
# Attribution de la propriété du dossier a Nginx pour qu' il puisse lire et écrire des fichiers afin de servir le site Web et d’effectuer des mises à jour automatiques.
chown -R www-data:www-data /var/www/localhost
# Copie du fichier de configuration Nginx
cp localhost /etc/nginx/sites-available/
# Active notre configuration par lien symbolique avec le fichier de config de Nginx
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
