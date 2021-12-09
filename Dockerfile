# For Java 8, try this
FROM openjdk:8

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre
MAINTAINER khanhitvn.online
# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-web.jar

ADD target/spring-boot-web.jar app-server.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","/app-server.jar"]

## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0