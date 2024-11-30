# README #
Nginx网关


## 服务启动
> docker运行

### docker compose
服务启动

1. docker-compose校验
```
docker compose down && docker compose up -d --build
```

### docker run
服务启动

1. 构建Nginx镜像
```
docker build -t nginx-gateway .
```

2. 启动Nginx服务
```
docker run -d \
    -p 8686:80 \
    --name nginx-gateway \
    --add-host www.example.com:127.0.0.1 \
    nginx-gateway
```
