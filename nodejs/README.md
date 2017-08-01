# nginx独立容器

### bulid

```
    docker build -t node-image-6.11 ./
```

### run

```
    docker run -d --volumes-from {VOLUMES_FROM} -p {OUT_PORT}:{IN_PORT} --name {CONTAINER_NAME} {IMAGE}
```
