FROM ubuntu:latest
MAINTAINER Yevgheniy Lotsman <revolyram@gmail.com>
WORKDIR /usr/share/nginx/html/
RUN apt-get -yqq update \ 
	&& apt-get -yqq --no-install-recommends install nginx wget tar \ 
        && wget https://files.phpmyadmin.net/phpMyAdmin/5.0.0/phpMyAdmin-5.0.0-all-languages.tar.gz --no-check-certificate \
        && tar -xvzf phpMyAdmin-5.0.0-all-languages.tar.gz \
        && cp -r phpMyAdmin-5.0.0-all-languages/* . \
        && rm -rf phpMyAdmin-5.0.0-all-languages phpMyAdmin-5.0.0-all-languages.tar.gz \
#       && apt-get -y remove wget tar \
        && mv config.sample.inc.php config.inc.php \
        && mkdir tmp && chmod 777 tmp \
        && sed -i 's/localhost/mysql/g' config.inc.php \
        && sed -i "s/'blowfish_secret'] = ''/'blowfish_secret'] = 'VRtsMjBjFI664.]}jYhNANx22[35Dcx0'/g" config.inc.php \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir /run/php \
	&& rm -f /etc/nginx/sites-enabled/default
EXPOSE 80
CMD nginx -g 'daemon off;'  
