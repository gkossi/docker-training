FROM ubuntu:18.04
MAINTAINER Kossi (gkossiboris@gmail.com)
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/gkossi/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]