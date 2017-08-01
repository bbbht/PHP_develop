# nginx独立容器

### bulid

```
    docker build -t local/nginx ./
```

### run

```
    docker run -d --volumes-from php70 -p 20080:80 --link php70 --name nginx local/nginx
```
