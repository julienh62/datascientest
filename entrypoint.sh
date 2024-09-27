#!/bin/bash
set -e

# Fichier de log pour capturer les erreurs
LOG_FILE="/var/log/mariadb_setup.log"

# Fonction pour enregistrer les messages dans le log
log() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> $LOG_FILE
}

# Étape 1 : Installation de 'nano'
log "Installation de 'nano'..."
apt-get update && apt-get install -y nano >> $LOG_FILE 2>&1
log "'nano' installé."

# Étape 2 : Initialiser la base de données si elle n'est pas déjà initialisée
log "Vérification de l'initialisation de la base de données..."
if [ ! -d /var/lib/mysql/mysql ]; then
    log "Initialisation de la base de données..."
    mysql_install_db --user=mysql --datadir=/var/lib/mysql >> $LOG_FILE 2>&1
    log "Base de données initialisée."
else
    log "La base de données est déjà initialisée."
fi

# Étape 3 : Modifier le bind-address dans le fichier '50-server.cnf' si nécessaire
log "Modification du bind-address dans le fichier '50-server.cnf'..."
sed -i "s/^bind-address\s*=.*$/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
log "bind-address modifié."

# Étape 4 : Démarrer MariaDB en arrière-plan pour pouvoir exécuter les commandes SQL
log "Démarrage de MariaDB..."
mysqld_safe --datadir=/var/lib/mysql >> $LOG_FILE 2>&1 &

# Attendre que MariaDB soit prêt
log "Attente du démarrage de MariaDB..."
until mysqladmin ping >/dev/null 2>&1; do
    echo "Waiting for MariaDB to start..."
    sleep 5
done
log "MariaDB est prêt."

# Étape 5 : Créer l'utilisateur 'datascientest' et lui donner les privilèges sur toutes les bases
log "Création de l'utilisateur 'datascientest'..."
mysql -u root <<-EOSQL >> $LOG_FILE 2>&1
    CREATE USER IF NOT EXISTS 'datascientest'@'%' IDENTIFIED BY 'azerty';
    GRANT ALL PRIVILEGES ON *.* TO 'datascientest'@'%' WITH GRANT OPTION;
    FLUSH PRIVILEGES;
EOSQL
log "Utilisateur 'datascientest' créé et privilèges accordés."

# Étape 6 : Créer les bases de données 'wordpress_db' et 'db_admin' si elles n'existent pas
log "Création des bases de données 'wordpress_db' et 'db_admin'..."
mysql -u root <<-EOSQL >> $LOG_FILE 2>&1
    CREATE DATABASE IF NOT EXISTS wordpress_db;
    CREATE DATABASE IF NOT EXISTS db_admin;
EOSQL
log "Bases de données créées."

# Étape 7 : Attendre que mysqld_safe soit terminé
log "Attente de la fin de mysqld_safe..."
wait
log "Script terminé."

