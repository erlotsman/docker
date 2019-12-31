!#/bin/bash
docker rm -f $(docker ps -aq)
docker volume rm -f $(docker volume ls -q)
docker image rm -f $(docker images -q)
