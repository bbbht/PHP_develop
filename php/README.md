# PHP独立容器

### bulid

```
    docker build -t develop/php-server ./
```

### run

```
    docker run -d -v /d/CODE/rehab-backend:/var/www/html --link DB_CONTAINER:mysql-server --name php-server-70 develop/php-server
```