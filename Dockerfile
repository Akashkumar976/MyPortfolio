# Use official OpenJDK 17
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Build the app using Maven wrapper inside the container
RUN ./mvnw clean package

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot app
CMD ["java", "-jar", "target/akashportfolio.jar"]
