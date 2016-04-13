FROM centos:latest
MAINTAINER ingktds <tadashi.1027@gmail.com>

RUN yum install -y http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y --enablerepo=nginx nginx

VOLUME [ "/etc/nginx" ]
EXPOSE 80 443
CMD [ "/usr/sbin/nginx", "-p", "/etc/nginx/", "-g", "daemon off;" ]
