FROM ubuntu:16.04
MAINTAINER ANEESH
ENV DEBIAN_FRONTEND noninteractive    #disable TZ data
RUN apt update
RUN apt install apache2 wget unzip -y
ADD web.tar.gz /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]   ####### httpd in centos  ["/usr/sbin/httpd","-D","FOREGROUND"]
WORKDIR /var/www/html/
