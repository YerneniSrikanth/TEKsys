FROM ubuntu:16.04
RUN apt-get update 
RUN apt-get install apache2 -y
copy index.html /var/www/html/
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
