mon_conteneur_nginx  (loadbalancer)
faire pointer serveur wordpress 
dans fichiers /etc/nginx/sites-available/default 
# Declaration des serveurs WordPress en backend
upstream wordpress_backend {
    server 192.168.10.21:80;
    server 192.168.10.22:80;
}

# Serveur pour les requetes HTTP (port 80)
server {
    listen 80;
    server_name mon-loadbalancer.julien-hennebo.cloudns.be www.mon-loadbalancer.julien-hennebo.cloudns.be;

    root /var/www/html;

    # Cette section permet a certbot d'acceder au repertoire .well-known pour les validations SSL
    location /.well-known/acme-challenge/ {
        root /var/www/html;
        try_files $uri =404;
    }

    # Redirection des requetes HTTP vers HTTPS
    location / {
        return 301 https://$server_name$request_uri;
    }
}

# Serveur pour les requete HTTPS (port 443) avec SSL activé
server {
    listen 443 ssl;
    server_name mon-loadbalancer.julien-hennebo.cloudns.be www.mon-loadbalancer.julien-hennebo.cloudns.be;

    # Chemins vers les certificats SSL generes par cerbot
    ssl_certificate /etc/letsencrypt/live/mon-loadbalancer.julien-hennebo.cloudns.be/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mon-loadbalancer.julien-hennebo.cloudns.be/privkey.pem;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;

    root /var/www/html;

    # Proxy pass pour rediriger les requetes vers les serveurs WordPress backend
    location / {
        proxy_pass http://wordpress_backend;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto https;
    }
}

MariaDB
******************************
docker exec -it mariadb /bin/bash
************************************
mysql -u root
*****************************
CREATE USER 'datascientest'@'%' IDENTIFIED BY 'azerty';
GRANT ALL PRIVILEGES ON *.* TO 'datascientest'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE DATABASE IF NOT EXISTS db_admin;
SELECT User, Host FROM mysql.user;
SHOW DATABASES;

*********************************************

Pour assurer connection mariadb 
/etc/mysql/mariadb.conf.d/50-server.cnf
modifier bind-adress sur 0.0.0.0

********************************

fichier wp-config
/** The name of the database for WordPress admin */
define( 'DB_NAME', 'db_admin' );
/** Database username */
define( 'DB_USER', 'datascientest' );
/** Database password */
define( 'DB_PASSWORD', 'azerty' );
/** Database hostname */
define( 'DB_HOST', '192.168.10.20' ); pointe vers maria db
/**port host 8081 */
---------------------------------------------------------------------------------------------------------------------
/** The name of the database for WordPress extra */
define('DB_NAME', 'wordpress_db');
define('DB_USER', 'datascientest');
define('DB_PASSWORD', 'azerty');
define('DB_HOST', '192.168.10.20'); pointe vers mariadb 
/** port host 8082 */
docker exec -it wordpress_admin /bin/bash

Bonnes pratiques;  
 se connecter au serveur avec vagrant ssh
faire hostname -I  pour verifier adresses ip 
ip a (égaleemnt)
