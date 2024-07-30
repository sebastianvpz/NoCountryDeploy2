# Usa una imagen base de Docker que soporte Docker Compose
FROM docker/compose:1.29.2

# Copia el archivo docker-compose.yml al contenedor
COPY docker-compose.yml /workspace/docker-compose.yml

# Define el directorio de trabajo
WORKDIR /workspace

# Ejecuta docker-compose up
CMD ["docker-compose", "up"]
