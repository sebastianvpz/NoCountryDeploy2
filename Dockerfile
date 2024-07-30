FROM docker/compose:1.29.2

COPY docker-compose.yml docker-compose.yml


CMD ["docker-compose", "up"]

