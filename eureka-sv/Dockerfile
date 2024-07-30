# Usa una imagen base de Maven para construir el JAR
FROM maven:3.8.5-openjdk-17-slim AS build

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo pom.xml y las dependencias
COPY pom.xml .

# Descarga las dependencias del proyecto
RUN mvn dependency:go-offline

# Copia el código fuente del proyecto en el contenedor
COPY src ./src

# Compila y empaqueta el proyecto en un archivo JAR
RUN mvn package -DskipTests

# Usa una imagen base de OpenJDK para ejecutar el JAR
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo JAR construido desde la fase anterior
COPY --from=build /app/target/eureka-sv-0.0.1.jar app_eureka-sv.jar

# Expone el puerto en el que Eureka estará escuchando (por defecto 8761)
EXPOSE 8761

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app_eureka-sv.jar"]
