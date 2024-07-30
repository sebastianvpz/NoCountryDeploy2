FROM docker/compose:1.29.2

COPY docker-compose.yml /workspace/docker-compose.yml

WORKDIR /workspace

CMD ["docker-compose", "up"]

