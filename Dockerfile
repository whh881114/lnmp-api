FROM registry.k8s.example.com:5000/roy/centos7-apache24-php72:v1.0.0

MAINTAINER 汪浩浩-whh881114@gmail.com

LABEL version="v1.0.1" description="LAMP环境：测试前后端分离，使用nginx-ingress作为负载入口。" by="汪浩浩"

COPY apache/httpd.conf /etc/httpd/conf/httpd.conf
COPY src /var/www/html

# 在容器中启动php-fpm进程
RUN source /opt/remi/php72/enable
RUN /opt/remi/php72/root/sbin/php-fpm

# 此命令写入至deployment
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80