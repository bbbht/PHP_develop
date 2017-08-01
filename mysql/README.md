# MySQL独立容器

### bulid

```
    docker build -t local/mysqlserver ./
```

### run

```
    docker run -d -v /d/docker/data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -p 23306:3306 --name db local/mysqlserver
```

使用本地目录挂载，持久保持数据库信息
使用本地端口23306