FROM nginx:latest

ARG ENV_NAME=dev
ENV ENV_NAME=$ENV_NAME

COPY ./entrypoint.sh /
COPY ./src /root

RUN chmod +x /entrypoint.sh

WORKDIR /etc/nginx/conf.d/

HEALTHCHECK --interval=10s --timeout=3s --retries=5 \
    CMD curl -fs http://localhost/healthcheck || exit 1

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]