!#/bin/bash
echo "Pass you password"
read -s $REPLY
echo "PASSWORD=$REPLY" > .env
docker rm -f nginx mysql php-fpm
docker-compose build  
docker-compose up -d --force-recreate
