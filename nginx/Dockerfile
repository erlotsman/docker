FROM ubuntu:latest
MAINTAINER Yevgheniy Lotsman <revolyram@gmail.com>
WORKDIR /usr/share/nginx/html/
RUN apt-get -yqq update \ 
	&& apt-get -yqq --no-install-recommends install nginx wget tar curl \ 
        && wget https://files.phpmyadmin.net/phpMyAdmin/5.0.0/phpMyAdmin-5.0.0-all-languages.tar.gz --no-check-certificate \
        && tar -xvzf phpMyAdmin-5.0.0-all-languages.tar.gz \
        && cp -r phpMyAdmin-5.0.0-all-languages/* . \
        && rm -rf phpMyAdmin-5.0.0-all-languages phpMyAdmin-5.0.0-all-languages.tar.gz *.php \
        && mkdir tmp && chmod 777 tmp \
        && rm -rf /var/lib/apt/lists/* \
	&& rm -f /etc/nginx/sites-enabled/default
CMD nginx -g 'daemon off;'  
