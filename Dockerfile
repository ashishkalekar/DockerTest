FROM php:7.0-apache
MAINTAINER Ashish Kalekar <<ashishkalekar06@gmail.com>>
COPY . /var/www/html/
RUN a2enmod ssl && a2enmod rewrite
RUN mkdir -p /etc/apache2/ssl
COPY ./ssl/* /etc/apache2/ssl/
COPY taskdone.gq.conf /etc/apache2/sites-available/
RUN a2ensite taskdone.gq.conf
EXPOSE 80
EXPOSE 443
