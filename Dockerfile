# centos_app_env
#
# VERSION   1.0

FROM centos:7

MAINTAINER Ryo Tabata <hirune525@gmail.com>

# init
ENV PATH $PATH:/usr/bin
RUN yum -y update; yum clean all;

# Dev tools for all Docker
RUN yum -y install git vim gcc wget pcre pcre-devel openssl openssl-devel

# make sure the package repository is up to date
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm


# Install Nginx
RUN yum update; yum install -y nginx;

ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

# Nginx public directory
ADD src /var/www

# expose nginx port
EXPOSE 80

# up service
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

