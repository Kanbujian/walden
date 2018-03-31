#! /bin/bash
echo "hello world"

# start redis
sudo docker run -d --name redis -v redis-storage:/data redis:3.2
echo 'redis started .....'

# query the redis data 
sudo docker exec -it redis redis-cli

# start postgres
sudo docker run --name postgresql -p 127.0.0.1:5432:5432 -e POSTGRES_PASSWORD=post123456 -e POSTGRES_USER=kanbujian -d postgres:9.6.8

# query the data 
sudo docker exec -it postgresql psql -U kanbujian

# start server

# start job queue 


