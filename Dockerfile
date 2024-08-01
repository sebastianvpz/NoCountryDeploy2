FROM docker:20.10.7-dind

# Instalar Docker Compose
RUN apk add --no-cache curl py-pip && \
    pip install docker-compose

# Copiar los archivos necesarios para construir y ejecutar los servicios
COPY . /app
WORKDIR /app

# Comando para iniciar Docker y luego Docker Compose
CMD ["sh", "-c", "dockerd-entrypoint.sh & sleep 5 && docker-compose up --build"]
