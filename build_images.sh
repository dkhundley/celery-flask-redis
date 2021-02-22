cd containers/flask-app/
docker build -t flask-redis .
cd ../simple-worker/
docker build -t redis-simple-worker .