# Utiliza la imagen base de OpenJDK 17 con slim
FROM openjdk:17-jdk-slim

# Define el argumento para el nombre del archivo JAR
ARG JAR_FILE=target/gestionmascotas-0.0.1.jar

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR en el contenedor
COPY ${JAR_FILE} app_gestionmascotas.jar

# Expone el puerto en el que Eureka estará escuchando (por defecto 8761)
EXPOSE 8081

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app_gestionmascotas.jar"]