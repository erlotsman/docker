!#/bin/bash
echo "Pass you password"
read -s $REPLY
echo "PASSWORD=$REPLY" > .env
docker rm -f nginx mysql php-fpm
docker-compose build --no-cache 
docker-compose up -d --force-recreate
echo $REPLY
docker exec -it mysql mysql -uroot -p`echo $REPLY` -e "alter user 'root'@'%' identified with mysql_native_password by '${REPLY}';"
