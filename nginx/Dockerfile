FROM ubuntu:latest
MAINTAINER Yevgheniy Lotsman <revolyram@gmail.com>

RUN apt-get -yqq update \ 
	&& apt-get -yqq --no-install-recommends install nginx \ 
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -f /etc/nginx/sites-enabled/default
EXPOSE 80
CMD nginx -g 'daemon off;'  
