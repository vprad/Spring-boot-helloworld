# Use an OpenJDK base image with Java 8
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the compiled JAR file from the target directory of your Maven build
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar app.jar

EXPOSE 8080
#
# Specify the command to run when the container starts
CMD ["java", "-jar", "app.jar"]
