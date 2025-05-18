FROM openresty/openresty:latest

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/ /etc/nginx/conf.d/

RUN groupadd --system --gid 101 nginx && \
    useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx && \
    mkdir -p /var/log/nginx/ && \
    touch /var/log/nginx/access.log /var/log/nginx/error.log && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

WORKDIR /etc/nginx/conf.d/

HEALTHCHECK --interval=10s --timeout=3s --retries=5 \
    CMD curl -fs http://127.0.0.1/healthcheck || exit 1

CMD ["nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]
