# README #
Nginx网关


## 系列
- general 通用系列，主打高效、快捷
- openresty 系列，使用Openresty作为Nginx网关
- safe 安全系列，注重网关安全

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
    -p 80:80 \
    -p 443:443 \
    --name nginx-gateway \
    --add-host www.example.com:127.0.0.1 \
    nginx-gateway
```
