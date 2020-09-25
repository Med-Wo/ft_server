#!/bin/sh

# Deplacement dans le dossier qui contiendra la cle prive et le certificat auto-signe
cd /etc/ssl/certs/
# Commande OpenSSL pour générer une clef privée et un certificat auto-signé pour localhost
openssl req -x509 -days 90 \
    -out localhost.crt \
    -keyout localhost.key \
    -newkey rsa:4096 -nodes -sha256 \
    -subj '/CN=localhost'
# Changement des droits de lecture et d'ecriture uniquement pour le proprietaire sur la cle prive et le certificat
chmod 600 /etc/ssl/certs/localhost.key
chmod 600 /etc/ssl/certs/localhost.crt
#Retour dans le dossier srcs
cd /srcs