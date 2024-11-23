FROM nginx:latest

ENV ENV_NAME=prod

COPY ./entrypoint.sh /
COPY ./src /root

RUN chmod +x /entrypoint.sh

WORKDIR /etc/nginx/conf.d/

HEALTHCHECK --interval=10s --timeout=3s --retries=5 \
    CMD curl -fs http://localhost/healthcheck || exit 1

CMD ["/entrypoint.sh"]
