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
