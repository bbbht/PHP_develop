# Documentation

通过设置环境变量文件（模板文件.env-example，复制为 .env）来改变容器配置        
构建镜像前，确保对相关变量进行合理设置，并添加正确的配置文件      
[docker-compose 命令](https://yeasy.gitbooks.io/docker_practice/content/compose/commands.html)参考        
### 功能介绍
1. php
    - 版本
        * 5.6
        * 7.1
    - 扩展
        * xdebug    
            查看 [xdebug.ini](./php/xdebug.ini) 配置    
            请自行完成相关IDE配置
        * mysqli
        * pdo_mysql
2. nginx
    - 版本    
        1.10
3. mysql
    - 版本    
        5.7

### build 构建镜像
```
# 构建所有镜像
docker-compose build [-f docker-compose.yml] [-p develop]
```

### 容器运行
```
# 运行镜像
docker-compose up -d [SERVICE...]

# 重启所有镜像
docker-compose restart [SERVICE...]
```
