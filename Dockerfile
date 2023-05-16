# Start from a base image with Maven and Java installed
FROM maven:3.8.3-openjdk-8-slim AS build

# Copy the project files to the container
COPY pom.xml /build/
COPY src /build/src/

# Set the working directory to the project folder
WORKDIR /build/

# Build the project with Maven
RUN mvn clean package

# Start from a base image with Java installed
FROM openjdk:8-jre-slim

# Copy the built jar file from the previous stage to the container
COPY --from=build /build/target/spring-boot-hello-world-1.0.0-SNAPSHOT.jar /app/app.jar

# Set the working directory to the app folder
WORKDIR /app/

# Expose the port used by the application
EXPOSE 8080

# Start the application when the container is run
CMD ["java", "-jar", "app.jar"]
