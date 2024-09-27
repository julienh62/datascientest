mon_conteneur_nginx  (loadbalancer)
faire pointer serveur wordpress 
dans fichiers /etc/nginx/sites-available/default 
#  erreurduplicata, deja present dans nginx/nginx.conf
    # Ajoutez les adresses IP des deux serveurs WordPress
    server 192.168.10.21:80;
    server 192.168.10.22:80;
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


