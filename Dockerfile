FROM registry.k8s.example.com:5000/docker.io/nginx:1.17.8

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/api.lnmp.example.com.conf /etc/nginx/conf.d/api.lnmp.example.com.conf
ADD src /usr/share/nginx/html

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
