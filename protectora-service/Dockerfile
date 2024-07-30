# Utiliza la imagen base de OpenJDK 17 con slim
FROM openjdk:17-jdk-slim

# Define el argumento para el nombre del archivo JAR
ARG JAR_FILE=target/protectora-service-0.0.1-SNAPSHOT.jar

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR en el contenedor
COPY ${JAR_FILE} app_protectoraservice.jar

# Expone el puerto en el que Eureka estará escuchando (por defecto 8761)
EXPOSE 8045

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app_protectoraservice.jar"]