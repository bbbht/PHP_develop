# docker-compose
修改 docker-compose.yml 中的数据卷路径
修改各目录下Docderfile 中有必要改动的地方
### build 构建镜像
```
docker-compose build -f docker-compose.yml -p develop
```

### 创建容器，后台运行
```
docker-compose up -d
```