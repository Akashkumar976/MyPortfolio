# Use Maven + JDK 17 image
FROM maven:3.9.2-eclipse-temurin-17

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the Spring Boot app using the Maven installed in the image
RUN mvn clean package

# Expose the default Spring Boot port
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "target/akashportfolio.jar"]
