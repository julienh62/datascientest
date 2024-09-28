cd /etc/update-motd.d
ls
rm 99-dst-welcome-linux-bash
sudo su
cd
vim .bash_history 
exit
tmux 
exit
cd exam-kubernetes
cd kubernetes-exam
ls
cd YAML-STANDARD
ls
cat deployment-postgres.yaml
cat service-postgres.yaml
cat secret6postgres.yaml
cat secret-postgres.yaml
rm pv-fastapi.yaml 
ls
rm pvc-fastapi.yaml
rm pv-multi-writer.yaml
rm storageclass-multiple-writes.yaml
ls
nano deployment postgres.yaml
nano deployment-postgres.yaml
nano secret-postgres.yaml
nano service-postgres.yaml
nano deployment-postgres.yaml
kubectl apply -f secret-postgres.yaml
kubectl apply -f deployment-postgres.yaml
kubectl apply -f service-postgres.yaml
cd ..
kubectl apply -f secret-postgres.yaml
kubectl apply -f deployment-postgres.yaml
kubectl apply -f service-postgres.yaml
curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644
kubectl apply -f secret-postgres.yaml
kubectl apply -f deployment-postgres.yaml
kubectl apply -f service-postgres.yaml
cd YAML-STANDARD
kubectl apply -f secret-postgres.yaml
kubectl apply -f deployment-postgres.yaml
kubectl apply -f service-postgres.yaml
kubectl create namespace standard
kubectl apply -f secret-postgres.yaml -n standard
kubectl apply -f deployment-postgres.yaml -n standard
kubectl apply -f service-postgres.yaml -n standard
sudo docker-compose down
ls
sudo docker-compose up -d
docker ps
kubectl logs
kubectl get pod
docker ps
git add .
git commit -m "update-env"
git push
docker logs e0161b4143da
curl -X 'POST'   'http://http://34.240.246.55:5000/users/'   -H 'accept: application/json'   -H 'Content-Type: application/json'   -d '{
  "name": "julien",
  "email": "jhennebo@gmail.com",
  "password": "azerty"
}'
cd ..
cd kubernetes-exam
rm -r *
ls
cd ..
ls
ls
git clone https://github.com/julienh62/kubernetes-exam.git
cd kubernetes-exam
ls
cd YAML-STANDARD
ls
sudo docker-compose up
cd ..
sudo docker-compose up
ls
sudo apt install docker-compose
docker --version
docker-compose --version
sudo docker-compose up
ls
cat Vagrantfile
cat Dockerfile
git init
git add .
mkdir kubernetes-exam
ls
cd kubernetes-exam
git rm --cached -r kubernetes-exam
git submodule add https://github.com/julienh62/kubernetes-exam.git kubernetes-exam
git submodule init
git submodule update
git add .
git commit -m "Ajout du sous-module kubernetes-exam"
git push origin master
git branch
git push origin main
git submodule init
git submodule update
ls
cd kubernetes-exam
ls
mv kubernetes-exam/* ./
cd ..
mv kubernetes-exam/kubernetes-exam/* .
ls
ls -R
rm -rf kubernetes-exam
mv kubernetes-exam kubernetes-exam-content
ls -R
cd ..
ls -R
cd kubernetes-exam
ls
rm -rf kubernetes-exam
cd ..
ls
rm -rf kubernetes-exam
ls
git clone --recurse-submodules https://github.com/julienh62/kubernetes-exam.git
ls
ls -R
cd kubernetes-exam
ls
cd kubernetes-exam
ls
mv * ../
cd ..
ls
cd kubernetes-exam
ls
cd ..
rm -rf kubernetes-exam
ls
cd ..
ls
git init
git add .
git commit -m "first"
git push
git remote add origin <url>
git remote add origin https://github.com/julienh62/datascientest.git
git branch -M main
git push -u origin main
nano Vagrantfile
vagrant up
docker ps
ls
mkdir loadbalancer-exam
ls
mv Dockerfile Vagrantfile kubernetes-exam/
ls
cd loadbalancer-exam
docker ps
mv Dockerfile Vagrantfile ..
ls
cd ..
ls
cd kubernetes-exam
mv Dockerfile Vagrantfile ..
ls
cd ..
ls
cd kubernetes-exam
docker ps
cd ;;
cd ..
loadbalancer-exam
cd loadbalancer-exam
docker ps
nano ~/.bashrc
cat ~/ .bashrc
cd ~
ls -a
cat .bashrc
nano ~/.bashrc
source ~/.bashrc
docker ps my-containers
my_containers
docker logs wordpress_extra
docker logs load_balancer
docker logs wordpress_admin
docker logs mariadb
docker ps
docker exec -it wordpress_extra /bin/bash
cat Dockerfile
nano Dockerfile
nano nginx.conf
docker build -t mon_wordpress_nginx .
nano Dockerfile
nano nginx.conf
docker build -t mon_wordpress_nginx .
nano Dockerfile
nano nginx.conf
my_containers

docker ps
my_container
my_containers
docker build -t loadbalancer-exam .
docker images
docker run -d -p 8080:80 --name mon_conteneur_nginx loadbalancer-exam
sudo lsof -i :8080
docker ps
docker stop kubernetes-exam_fastapi_1
docker stop pgadmin
docker run -d -p 8080:80 --name mon_conteneur_nginx loadbalancer-exam
docker stop mon_conteneur_nginx
docker rm mon_conteneur_nginx
docker run -d -p 8080:80 --name mon_conteneur_nginx loadbalancer-exam
docker logs mon_conteneur_nginx
docker logs mon_conteneur_nginx loadbalancer-exam
docker ps
docker logs mon_conteneur_nginx
docker exec -it mon_conteneur_nginx /bin/bash
docker stop mon_conteneur_nginx
docker rm mon_conteneur_nginx
docker run -d -p 8080:80 --name mon_conteneur_nginx -v /etc/letsencrypt:/etc/letsencrypt loadbalancer-exam
docker logs mon_conteneur_nginx
docker ps
docker exec -it mon_conteneur_nginx /var/log/nginx/error.log
docker exec -it mon_conteneur_nginx cat /var/log/nginx/error.log
docker exec -it mon_conteneur_nginx nginx -t
exit
ls -l /etc/letsencrypt/live/wordpress.julien-hennebo.cloudns.be/
cd loadbalancer-exam
ls -l /etc/letsencrypt/live/wordpress.julien-hennebo.cloudns.be/
ls -l /etc/letsencrypt/live/
sudo apt-get update
sudo apt-get install certbot python3-certbot-nginx
sudo certbot certonly --nginx -d wordpress.julien-hennebo.cloudns.be
dig wordpress.julien-hennebo.cloudns.be
curl -I http://wordpress.julien-hennebo.cloudns.be
ls
cd ..
ls
nginx -v
sudo systemctl status nginx
cat /etc/nginx/sites-available/default  # ou le nom de votre fichier de config spécifique
nano etc/nginx/sites-available/default
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl restart nginx
curl -I http://wordpress.julien-hennebo.cloudns.be
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it <nom_du_conteneur_mariadb> /bin/bash
docker exec -it <nom_du_conteneur_mariadbps /bin/bash
my-containers
my_containers
docker exec -it mariadb /bin/bash
docker ps
docker exec -it mariadb /bin/bash
cat Dockerfile
cat Vagrantfile
docker exec -it mariadb /bin/bash
docker start mariadb
mysql -u root -p
sudo apt update
sudo apt install mariadb-client
docker exec -it mariadb /bin/bash
docker logs mariadb
docker ps -a
docker logs mariadb
docker exec -it mariadb /bin/bash
docker ps
ls
cd loadbalancer-exam
ls
cd kubernetes-exam
cd ..
ls
cd kubernetes-exam
ls
cd ..
ls
git add .
git commit -m "load-balancer24sept"
ls -a
git reset --soft HEAD~1
git reset --hard HEAD~1
nano .gitignore
git add .
git commit -m "Ajout des fichiers nécessaires sans les fichiers indésirables"
git push origin main  # Remplacez 'main' par le nom de votre branche principale si nécessaire
git rm --cached -r .  # Supprime tous les fichiers du suivi tout en les conservant sur le disque
git add .  # Ajoutez à nouveau tous les fichiers qui ne sont pas ignorés
git commit -m "Mise à jour du .gitignore et suppression des fichiers non désirés"
git push origin main  # Remplacez 'main' par le nom de votre branche si nécessaire
nano .gitignore
git rm --cached -r .  # Désindexe tous les fichiers tout en les conservant sur le disque
git add .  # Ajoute à nouveau les fichiers qui ne sont pas dans .gitignore
git commit -m "Nettoyage du dépôt : suppression des fichiers indésirables"
git status
git push origin main  # Remplacez 'main' par le nom de votre branche si nécessaire
git add kubernetes-exam
git commit -m "Mise à jour de kubernetes-exam"
git push origin main
git status
cd kubernetes-exam
git status
git add .
git commit -m "Mise à jour des fichiers dans kubernetes-exam"
git push origin main
cd ..
ls
cd loadbalancer-exam
ls
cd ..
docker ps
docker restart mon_conteneur_nginx
docker restart wordpress_admin
docker restart wordpress_extra
docker restart mariadb
my-containers
my_containers
docker run -d -p 8085:80 --name mon_conteneur_nginx loadbalancer-exam
docker run -d -p 8081:80 --name mon_conteneur_nginx loadbalancer-exam
docker ps
docker rm -f mon_conteneur_nginx
docker run -d -p 8085:80 --name mon_conteneur_nginx loadbalancer-exam
docker ps
docker exec -it on-conteneur_nginx /bin/bash
docker exec -it mon-conteneur_nginx /bin/bash
docker inspect mon_conteneur_nginx | grep "Mounts"
docker inspect mon_conteneur_nginx
docker run -d -p 8085:80 --name mon_conteneur_nginx -v /path/local/nginx.conf:/etc/nginx/nginx.conf -v /path/local/site:/usr/share/nginx/html loadbalancer-exam
docker exec -it mon_conteneur_nginx /bin/bash
ls
nano nginx.conf
docker restart mon_conteneur_nginx
nano nginx.conf
docker restart mon_conteneur_nginx
docker exec mon_conteneur_nginx nginx -s reload
cat nginx.conf
docker ps
docker exec mon_conteneur_nginx nginx -s reload
nano nginx.conf
docker exec mon_conteneur_nginx nginx -t
docker exec mon_conteneur_nginx cat /var/log/nginx/error.log
curl http://wordpress.julien-hennebo.cloudns.be
docker logs wordpress_admin
docker exec -it mon_conteneur_nginx /bin/bash
docker restart mon_conteneur_nginx
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it mon_conteneur_nginx curl http://wordpress_admin:80
docker ps
docker network ls
docker network create mon_reseau
docker network connect mon_reseau wordpress_admin
docker network connect mon_reseau wordpress_extra
docker network connect mon_reseau mon_conteneur_nginx
docker network connect mon_reseau mariadb
docker network inspect mon_reseau
docker exec -it mon_conteneur_nginx curl http://172.18.0.2
docker ps
docker logs wordpress_admin
docker exec -it wordpress_admin /bin/bash
docker exec -it mon_conteneur_nginx 
ubuntu@ip-172-31-25-251:~$ docker exec -it mon_conteneur_nginx curl http://172.18.0.2
curl: (7) Failed to connect to 172.18.0.2 port 80: Connection refused
ubuntu@ip-172-31-25-251:~$ docker exec -it mon_conteneur_nginx curl http://172.18.0.2
curl: (7) Failed to connect to 172.18.0.2 port 80: Connection refused
nslookup wordpress.julien-hennebo.cloudns.be
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it mon_conteneur_nginx nginx -s reload
docker ps
docker exec -it mon_conteneur_nginx cat /var/log/nginx/error.log
docker exec -it mon_conteneur_nginx nginx -t
cat Dockerfile
cat Vagrantfile
ocker ps
docker ps
dig 
wordpress.julien-hennebo.cloudns.be
dig 
wordpress.julien-hennebo.cloudns.be
dig wordpress.julien-hennebo.cloudns.be
sudo iptables -L -n
docker exec -it wordpress_admin /bin/bash
docker exec -it mariadb /bin/bash
docker ps
docker exec -it wordpress_extra /bin/bash
docker exec -it wordpress_admin /bin/bash
docker exec -it mariadb /bin/bash
docker ps
docker exec -it mon-conteneur_nginx /bin/bash
ls
docker exec -it mon_conteneur_nginx /bin/bash
docker ps
docker stop $(docker ps -q)
docker start $(docker ps -a -q)
docker network inspect mon_reseau
docker exec -it wordpress_extra /bin/bash
docker ps
docker logs wordpress_extra

docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it mariadb /bin/bash
docker exec -it wordpress_admin /bin/bash
docker exec -it mon_conteneur_nginx /bin/bash
docker logs wordpress_extra
docker exec -it wordpress_extra /bin/bash
docker logs mon_conteneur_nginx
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it mariadb /bin/bash
docker exec -it wordpress_extra /bin/bash
docker exec -it wordpress_admin /bin/bash
docker stop $(docker ps -q)
docker start $(docker ps -a -q)
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it wordpress_admin /bin/bash
cat: /var/www/html/wp-content/debug.log: No such file or directory
root@cd5ab2667d83:/# touch /var/www/html/wp-content/debug.log
root@cd5ab2667d83:/# chmod 666 /var/www/html/wp-content/debug.log
root@cd5ab2667d83:/# cat /var/www/html/wp-content/debug.log
root@cd5ab2667d83:/# cat /var/www/html/wp-config.php
<?php
/**
define( 'DB_COLLATE', '' );
/**#@+
define( 'AUTH_KEY',         'put your unique phrase here' );
define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
define( 'NONCE_KEY',        'put your unique phrase here' );
define( 'AUTH_SALT',        'put your unique phrase here' );
define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
define( 'NONCE_SALT',       'put your unique phrase here' );
/**#@-*/
/**
$table_prefix = 'wp_';
/**
define('WP_DEBUG', true); // Active le mode debogage
define('WP_DEBUG_LOG', true); // Enregistre les erreurs dans wp-content/debug.log
define('WP_DEBUG_DISPLAY', false); // N affiche pas les erreurs a l ecran
/* Add any custom values between this line and the "stop editing" line. */
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
echo $undefined_variable;

docker restart wordpress_admin
docker exec -it wordpress_admin /bin/bash
docker restart wordpress_extra /bin/bash
docker exec -it wordpress_extra /bin/bash
docker exec -it mariadb /bin/bash
docker restart $(docker ps -q)
docker exec -it mariadb /bin/bash
docker ps
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it mariadb /bin/bash
docker exec -it worpress_extra /bin/bash
docker exec -it wordpress_extra /bin/bash
docker exec -it mon_conteneur_nginx /bin/bash
docker restart mon_conteneur_nginx
curl -I http://wordpress.julien-hennebo.cloudns.be:8085/
docker stop $(docker ps -q)
docker restart $(docker ps -q)
docker start $(docker ps -aq)
docker exec -it mon_conteneur_nginx /bin/bash
docker stop $(docker ps -q)
docker start $(docker ps -aq)
docker exec -it mon_conteneur_nginx /bin/bash
docker ps
docker rm 955d53454d48 48a06f8ecce1 3bb31d46ed28
my_containers
docker rm load_balancer
docker stop load_balancer
docker rm load_balancer
cat Dockerfile
cat Vagrantfile
nano Vagrantfile
vagrant reload
docker ps
nano Vagrantfile
git add .
git commit - m "config-24aout20h45"
git commit -m "config-24aout20h45"
git push
vagrant up --provision
docker stop mon_conteneur_nginx
docker rm mon_conteneur_nginx
vagrant reload
docker ps
nano readme.txt
git add .
git commit -m "add readme"
git push
ls
docker ps
vagrant up
docker ps
docker exec -it wordpress_extra
docker exec -it wordpress_extra /bin/bash
docker ps
ls
docker exec -it mon_conteneur_nginx /bin/bash
nano Vagrantfile
docker exec -it wordpress_extra /bin/bash
vagrant ssh client1
nano Vagrantfile
vagrant ssh wp_admin
nano Vagrantfile
vagrant ssh mon_conteneur_nginx
vagrant ssh worpress_extra
nano Vagrantfile
vagrant ssh wp_extra
vagrant ssh wp_admin
vagrant ssh db
nano Vagrantfile
vagrant ssh wordpress_admin
nano Vagrantfile
docker ps
ls

ls
vagrant ssh wordpress_admin
vagrant ssh wp_extra
nano Vagrantfile
vagrant ssh wordpress_extra
nano Vagrantfile
vagrant ssh mariadb
vagrant ssh mon-conteneur_nginx
vagrant ssh mon_conteneur_nginx
docker exec -it mon_conteneur_nginx /bin/bash
nano Vagrantfile
docker exec -it mon_conteneur_nginx /bin/bash
sudo lsof -i :80
docker ps
docker stop $(docker ps -q)
docker ps
cat readme.txt
cat Vagrantfile
cat readme.txt
ls
docker exec -it mon_conteneur_nginx /bin/bash
docker up
docker restart container
vagrant up
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it wordpress_extra /bin/bash
cat readme.txt
cat Vagrantfile
docker exec -it mariadb /bin/bash
cat Dockerfile
cat Vagrantfile
nano Dockerfile
docker build -t mon_projet-26sept .
nano Dockerfile
docker build -t mon_projet-26sept .
docker ps

vagrant up
docker exec -it mariadb /bin/bash
cat Dockerfile
nano Dockerfile
nano entrypoint.sh
nano Dockerfile
docker build -t mon_projet-26sept .
docker stop mariadb
docker rm mariadb
docker run -d --name mariadb -p 3306:3306 mon_projet-26sept
docker exec -it mariadb /bin/bash
mysql -h 192.168.10.20 -u datascientest -p
mysql -u root -p
docker exec -it mariadb /bin/bash
docker start mariadb
docker exec -it mariadb /bin/bash
nano readme.txt
docker exec -it wordpress_extra /bin/bash
docker exec -it wordpress_admin /bin/bash
docker exec -it wordpress_extra /bin/bash
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it mariadb /bin/bash
docker ps
docker exec -it mariadb /bin/bash
docker restart mariadb
mysql -h 127.0.0.1 -P 3306 -u root -p
mysql -h 127.0.0.1 -P 3306 -u datascientest -p
docker ps
cat readme.txt
cat vagrantfile
cat Vagrantfile
nano entrypoint.sh
docker build -t mon_projet-26sept .
mysql -h 127.0.0.1 -P 3306 -u datascientest -p
docker exec -it mariadb /bin/bash
cat /etc/mysql/mariadb.conf.d/50-server.cnf
cat /etc/mysql/mariadb.conf.d/
cd /etc/mysql/mariadb.conf.d/
ls
nano entrypoint.sh
cd ..
docker exec -it mariadb /bin/bash
nano entrypoint.sh
ls
cd /home/ubuntu
ls
nano entrypoint.sh
cat Dockerfile
mysql -h 127.0.0.1 -P 3306 -u datascientest -p
mariadb -u root -p
nano entrypoint.sh
docker build -t mon_projet-26sept .
mysql -h 127.0.0.1 -P 3306 -u datascientest -p
docker ps
docker stop mariadb
docker rm mariadb
docker ps
docker build -t mon_projet-26sept .
docker ps
mkdir ~/mariadb_data
ls
docker run -d --name mariadb -p 3306:3306 -v ~/mariadb_data:/var/lib/mysql mon_projet-26sept
docker ps
docker exec -it mariadb /bin/bash
nano entrypoint.sh
sudo touch /var/log/mariadb_setup.log
sudo chmod 666 /var/log/mariadb_setup.log
nano entrypoint.sh
docker stop mariadb
docker rm mariadb
docker build -t mon_projet-26sept .
ls -ld ~/mariadb_data
sudo chmod -R 755 ~/mariadb_data
docker build -t mon_projet-26sept .
nano entrypoint.sh
cat /var/log/mariadb_setup.log
docker run -d --name mariadb -p 3306:3306 -v ~/mariadb_data:/var/lib/mysql mon_projet-26sept
cat /var/log/mariadb_setup.log
docker exec -it mariadb /bin/bash
nano readme
nano readme.txt
docker exec -it mariadb /bin/bash
nano entrypoint.sh
docker exec -it mon_conteneur_nginx /bin/bash
docker ps
docker logs e0161b4143da
ls
cd kubernetes-exam
ls
kubectl get pods
cd ..
kubectl get pods
kubectl get namespaces
kubectl get pods -n standard
kubectl get deployments -n standard
kubectl get services -n standard
kubectl get events -n standard
kubectl get pvc -n standard
kubectl delete pod postgres-0 -n standard
kubectl delete pvc postgres-storage-postgres-0 -n standard
kubectl get pods -n standard
kubectl get pvc -n standard
kubectl get services -n standard
docker ps
kubectl get pods -n standard
kubectl get pvc -n standard
kubectl delete pod postgres-0 --grace-period=0 --force -n standard
kubectl delete pvc postgres-storage-postgres-0 --grace-period=0 --force -n standard
kubectl get pods -n standard
kubectl get pvc -n standard
kubectl get statefulsets -n standard
kubectl get deployments -n standard
kubectl delete statefulset postgres -n standard
kubectl get pods -n standard
kubectl get pvc -n standard
kubectl get pv
kubectl delete pvc postgres-storage-postgres-0 -n standard
kubectl get pvc -n standard
kubectl get pods -n standard
docker ps
docker stop e0161b4143da
docker container prune
docker ps
docker exec -it mon_conteneur_nginx /bin/bash
docker exec -it wordpress_admin /bin/bash
docker exec -it wordpress_extra /bin/bash
docker stop wordpress_extra
docker stop wordpress_admin
docker ps
docker restart wordpress_extra
docker restart wordpress_admin
docker ps
cat readme.txt
docker exec -it wordpress_extra /bin/bash
docker exec -it wordpress_admin /bin/bash
docker exec -it mariadb /bin/bash
docker exec -it mon_conteneur_nginx /bin/bash
ls
cd kubernetes-exam
ls
cd ..
git add .
exit
git add .
ubuntu@ip-172-31-25-251:~$ git add .
error: open("mariadb_data/ibtmp1"): Permission denied
error: unable to index file 'mariadb_data/ibtmp1'
fatal: adding files failed
sudo chmod 644 mariadb_data/ibtmp1
git add .
git commit -m "27sept"
git push
nano readme.txt
git add .
git commit -m "27septe"
git push
cat readme.txt
nano readme.txt
cat Vagrantfile
ls
docker exec -it mariadb /bin/bash
vagrant up
docker stop mariadb
docker rm mariadb
vagrant up mariadb
docker exec -it wordpress-extra /bin/bash
docker exec -it wordpress_extra /bin/bash
docker exec -it wordpress_admin /bin/bash
docker exec -it mariadb /bin/bash
ls
cat entrypoint.sh
cat Vagrantfile
cat Dockerfile
docker exec -it mariadb /bin/bash
vagrant ssh mon_conteneur_nginx
nano readme.txt
cat readme.txt
docker ps
docker exec -it mariadb /bin/bash
docker exec -it mon_conteneur_nginx /bin/bash
docker stop mon_nginx_conteneur
docker ps
docker stop mon_conteneur_nginx
docker ps -a
docker start mon_conteneur_nginx
docker ps
docker stop mon_conteneur_nginx
docker ps
docker ps -a
docker rm mon_conteneur_nginx
docker start mon_conteneur_nginx
find / -name nginx.conf 2>/dev/null
docker exec -it mon_conteneur_nginx /bin/bash
ls
docker start mon_conteneur_nginx
vagrant up
docker ps -a
docker exec -it mon_conteneur_nginx /bin/bash
