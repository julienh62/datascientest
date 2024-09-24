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
