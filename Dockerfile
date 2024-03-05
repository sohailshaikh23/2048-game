FROM ubuntu:22.04
MAINTAINER "sohailshaikh125@gmail.com"
RUN apt-get update -y 
RUN apt-get install -y nginx 
RUN echo "daemon off ;" >>/etc/nginx/nginx.conf
COPY . /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/nginx","-c","/etc/nginx/nginx.conf"]
