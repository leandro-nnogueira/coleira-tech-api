# Etapa 1: Build do JAR
FROM maven:3.9.4-eclipse-temurin-21 as builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Etapa 2: Runtime da aplicação
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=builder /app/target/Coleira-Tech-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
