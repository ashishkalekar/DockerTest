FROM php:7.0-apache
MAINTAINER Ashish Kalekar <<ashishkalekar06@gmail.com>>
COPY . /var/www/html/
RUN a2enmod ssl && a2enmod rewrite
RUN mkdir -p /etc/apache2/ssl
COPY ./ssl/* /etc/apache2/ssl/
COPY task.conf /etc/apache2/sites-available/
RUN a2ensite task.conf
#RUN systemctl reload apache2
EXPOSE 80
EXPOSE 443
#FROM php:7.0-apache
#MAINTAINER Ashish Kalekar <<ashishkalekar06@gmail.com>>
#COPY . /var/www/html/
#EXPOSE 8080
