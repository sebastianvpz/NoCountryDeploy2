# Usa una imagen base de Docker que soporte Docker Compose
FROM docker/compose:1.29.2

# Copia el archivo docker-compose.yml al contenedor
COPY docker-compose.yml /Back/docker-compose.yml

# Define el directorio de trabajo
WORKDIR /Back

# Ejecuta docker-compose up
CMD ["docker-compose", "up"]
