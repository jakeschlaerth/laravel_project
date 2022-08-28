FROM php:8.1-apache

RUN apt update && apt upgrade -y

RUN apt install -y wget git p7zip-full

RUN wget -O composer-setup.php https://getcomposer.org/installer

RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer && rm composer-setup.php

