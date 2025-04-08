# ----------- Stage 1: Build the Spring Boot app using Maven -----------
FROM maven:3.9.5-eclipse-temurin-17 AS builder

# Create app directory
WORKDIR /app

# Copy the whole project
COPY . .

# Build the project and skip tests
RUN mvn clean package -DskipTests


# ----------- Stage 2: Run the built JAR with Java 17 -----------
FROM eclipse-temurin:17-jdk

# Create app directory in runtime container
WORKDIR /app

# Copy the JAR from the builder container
COPY --from=builder /app/target/*.jar app.jar

# Expose the app port (change if your app runs on a different port)
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
