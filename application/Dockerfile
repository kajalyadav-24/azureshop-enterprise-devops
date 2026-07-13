# Stage 1: Build the Spring Boot application
FROM maven:3.9.16-eclipse-temurin-17-alpine AS build

WORKDIR /build

COPY pom.xml .

RUN mvn dependency:go-offline -B

COPY src ./src

RUN mvn clean package -DskipTests

# Stage 2: Create the lightweight runtime image
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY --from=build /build/target/azureshop-api-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]