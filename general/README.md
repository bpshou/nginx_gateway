## 服务启动

### docker compose
1. 将配置文件打入到镜像内，再启动容器
```
docker compose down && docker compose up -d --build && docker logs -f nginx
```

2. 以映射方式启动容器，修改配置后，可以重启容器
```
docker compose -f docker-compose.volume.yml down && docker compose -f docker-compose.volume.yml up -d --build && docker logs -f nginx
```
