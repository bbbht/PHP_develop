FROM mysql:5.7.16

# 定义工作目录
ENV WORK_PATH /usr/local/work

# 定义会被容器自动执行的目录
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d

#创建文件夹
RUN mkdir -p $WORK_PATH

# 将要执行的shell脚本,数据库文件等移入容器目录
ADD ./run/ $AUTO_RUN_DIR/
ADD ./sql/ $WORK_PATH/
ADD my.cnf /etc/my.cnf

# 给执行文件增加可执行权限
RUN chmod a+x $AUTO_RUN_DIR/*.sh

# 修正时区 确定用户uid
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone \
    && usermod -u 1000 mysql;