FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY . .
RUN ./mvnw clean package
EXPOSE 8080
CMD ["java", "-jar", "target/akashportfolio.jar"]
