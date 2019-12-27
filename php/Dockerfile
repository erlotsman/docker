FROM ubuntu:latest
MAINTAINER Yevgheniy Lotsman <revolyram@gmail.com>

ENV PHP_VERSION 7.2

WORKDIR /usr/share/nginx/html/

ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.0/phpMyAdmin-5.0.0-all-languages.zip .

RUN apt-get -yqq update \ 
	&& apt-get -yqq --no-install-recommends install php$PHP_VERSION-fpm php$PHP_VERSION-mysql php$PHP_VERSION-mbstring \
 	&& apt-get -yqq --no-install-recommends install unzip \
	&& unzip phpMyAdmin-5.0.0-all-languages.zip \
	&& cp -r phpMyAdmin-5.0.0-all-languages/* . \
	&& rm -rf phpMyAdmin-5.0.0-all-languages.zip \
	&& apt-get -yqq remove unzip \
	&& mv config.sample.inc.php config.inc.php \
	&& mkdir tmp && chmod 777 tmp \
	&& sed -i 's/localhost/mysql/g' config.inc.php \
	&& sed -i "s/'blowfish_secret'] = ''/'blowfish_secret'] = 'VRtsMjBjFI664.]}jYhNANx22[35Dcx0'/g" config.inc.php \ 
	&& rm -rf /var/lib/apt/lists/* \ 
	&& mkdir /run/php 
 
CMD /usr/sbin/php-fpm$PHP_VERSION --nodaemonize --fpm-config /etc/php/$PHP_VERSION/fpm/php-fpm.conf 
