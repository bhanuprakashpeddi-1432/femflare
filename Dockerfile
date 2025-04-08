# Use Maven with Java 17
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside the container
WORKDIR /app

# Copy all project files to the container
COPY . .

# Expose the default Spring Boot port
EXPOSE 8080

# Run the app using Maven (no JAR build)
CMD ["mvn", "spring-boot:run"]
