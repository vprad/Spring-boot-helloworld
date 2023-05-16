FROM openjdk:8-jdk-alpine

VOLUME /tmp

ARG JAR_FILE=target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

