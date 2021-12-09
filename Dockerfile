# For Java 8, try this
FROM openjdk:8

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre
EXPOSE 8087
# Refer to Maven build -> finalName

ADD target/spring-boot-web.jar spring-boot-web.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","/spring-boot-web.jar"]

## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0