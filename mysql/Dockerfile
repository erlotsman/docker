FROM ubuntu:latest

MAINTAINER Yevheniy Lotsman <revolyram@gmail.com>

ENV PASSWORD 1234

RUN apt -qqy update \
	&& apt -qqy install mysql-server \
	&& /etc/init.d/mysql start \
#	&& mysql -uroot -p -e "alter user 'root'@'%' identified with mysql_native_password by '${PASSWORD}';" 
CMD /usr/bin/mysqld_safe && bash 
