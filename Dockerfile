FROM centos:7
#FROM ubuntu:18.04
MAINTAINER Kossi (gkossiboris@gmail.com)
RUN yum update -y
#RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive yum install -y nginx git
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/gkossi/static-website-example.git /var/www/html/
#ADD static-website-example/ /var/www/html/
EXPOSE 8085
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
#CMD [“nginx”, “-g”, “daemon off;”]
