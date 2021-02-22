cd containers/flask-app/
docker build -t flask-redis:1.0.0 .
docker save --output ../../docker-images/flask-redis-1.0.0.tar flask-redis:1.0.0
cd ../simple-worker/
docker build -t redis-simple-worker:1.0.0 .
docker save --output ../../docker-images/redis-simple-worker-1.0.0.tar redis-simple-worker:1.0.0
cd ../../docker-images/
sudo k3s ctr images import flask-redis-1.0.0.tar
sudo 
k3s ctr images import redis-simple-worker-1.0.0.tar 