#!/bin/sh

# Lance les services
service nginx start
service php7.3-fpm start
service mysql start
# Ajoutez l'utilisateur et donnez-lui la permission d'accéder à la base de données de phpMyAdmin.
mysql -u root < /srcs/init_db.sql
# Importez le fichier create_tables.sql pour créer des tables pour phpMyAdmin.
mysql -u root < /var/www/localhost/phpMyAdmin/sql/create_tables.sql

service nginx restart
service php7.3-fpm restart