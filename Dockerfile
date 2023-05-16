# Use a base image with Java 8 installed
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from the target directory to the container
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar app.jar

# Expose the port on which the Spring Boot application listens
EXPOSE 8080

# Set the entry point command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
