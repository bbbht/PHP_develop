FROM nginx:1.10

ADD nginx.conf /etc/nginx/nginx.conf

ADD  sites-enabled/    /etc/nginx/conf.d/

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak

# 修正时区 确定用户uid
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone \
    && usermod -u 1000 nginx;