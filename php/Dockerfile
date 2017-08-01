FROM php:5.6.30-fpm

# 安装配置开发环境软件
RUN apt-get update \
    && apt-get install -y git vim \
    && apt-get autoremove \
    && apt-get clean;

# 添加配置文件
ADD .gitconfig /root/.gitconfig
ADD php.ini /usr/local/etc/php/conf.d/
ADD xdebug.ini /usr/local/etc/php/conf.d/

# 安装扩展
RUN docker-php-ext-install mysqli pdo_mysql \
    && pecl install -o -f xdebug \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable xdebug;

# 修正时区 确定用户uid
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone \
    && usermod -u 1000 www-data;
