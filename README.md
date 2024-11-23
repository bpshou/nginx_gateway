# README #
Nginx网关


### 网关语法测试
> 为方便检查配置的语法是否正确，我们可以使用docker本地启动一个环境进行语法检查

### docker compose
通过docker-compose校验服务是否正常启动，正常启动则相关语法正确，否则则异常

1. docker-compose校验
```
docker compose build
docker compose up -d
docker compose down
```

### docker run
通过命令行校验服务是否正常启动，正常启动则相关语法正确，否则则异常

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

- 如果提示一些不存在的文件夹或文件，先手动创建上，因为服务器上可能是存在的。
- 我们主要是检查配置的语法的正确性

