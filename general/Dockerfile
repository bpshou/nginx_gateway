FROM nginx:latest

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/ /etc/nginx/conf.d/

WORKDIR /etc/nginx/conf.d/

HEALTHCHECK --interval=10s --timeout=3s --retries=5 \
    CMD curl -fs http://127.0.0.1/healthcheck || exit 1

CMD ["nginx", "-g", "daemon off;"]
