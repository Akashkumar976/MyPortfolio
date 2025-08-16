# Use OpenJDK
FROM openjdk:17-jdk-alpine

WORKDIR /app

# Copy everything
COPY . .

# Build the app
RUN ./mvnw clean package

# Expose port
EXPOSE 8080

# Start the jar
CMD ["java", "-jar", "target/akashportfolio.jar"]
