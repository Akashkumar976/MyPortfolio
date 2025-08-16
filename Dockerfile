# Use OpenJDK 17 + Maven
FROM maven:3.9.2-eclipse-temurin-17

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Build the project using Maven
RUN mvn clean package

# Expose port 8080
EXPOSE 8080

# Start the Spring Boot application
CMD ["java", "-jar", "target/akashportfolio.jar"]
