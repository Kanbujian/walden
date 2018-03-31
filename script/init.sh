#! /bin/bash

# create docker volume for redis
docker volume create redis-storage

# create docker volume for postgres
docker volume create postgres-storage

# list all the container (include the exited)
sudo docker ps -a

# restart the redis container 
sudo docker restart redis

# restart the postgresql container 
sudo docker restart postgresql