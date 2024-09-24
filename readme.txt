

/** The name of the database for WordPress admin */

define( 'DB_NAME', 'db_admin' );


/** Database username */

define( 'DB_USER', 'admin' );


/** Database password */

define( 'DB_PASSWORD', 'azerty' );


/** Database hostname */

define( 'DB_HOST', 'localhost' );


---------------------------------------------------------------------------------------------------------------------


/** The name of the database for WordPress admin */

define('DB_NAME', 'wordpress_db');

define('DB_USER', 'datascientest');

define('DB_PASSWORD', 'azerty');

define('DB_HOST', 'localhost'); 

docker exec -it wordpress_admin /bin/bash



Puisque le paramètre bind-address est actuellement défini sur 127.0.0.1, cela signifie que le serveur MariaDB n'acceptera des connexions qu'à partir de la machine locale. Pour permettre les connexions à partir d'autres conteneurs Docker ou d'autres machines, vous devez modifier cette ligne.
Étapes à Suivre

    Modifier le fichier de configuration 
docker exec -it mariadb /bin/bash
nano /etc/mysql/mariadb.conf.d/50-server.cnf

    Recherchez la ligne suivante :

    ini

bind-address = 127.0.0.1

Remplacez-la par :

ini

bind-address = 0.0.0.0

docker exec -it mon_conteneur_nginx /bin/bash
docker inspect mon_conteneur_nginx | grep "Mounts"
docker logs mon_conteneur_nginx
ubuntu@ip-172-31-25-251:~$ docker run -d -p 8085:80 --name mon_conteneur_nginx -v /path/local/nginx.conf:/etc/nginx/nginx.conf -v /path/local/site:/usr/share/nginx/html loadbalancer-exam
docker: Error response from daemon: Conflict. The container name "/mon_conteneur_nginx" is already in use by container "f4f11020961a0d4ab7348644d5af5b9c9884d99313d3c225890776a8ef1f6937". You have to remove (or rename) that container to be able to reuse that name.
See 'docker run --help'.
 peux tu me préciser à chaque fois que tu parles de fichier nginx s'il s'agit de fichier du conteneur ou bien de l'hote ?
dig wordpress.julien-hennebo.cloudns.be
http://wordpress.julien-hennebo.cloudns.be:8085
