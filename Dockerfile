FROM openjdk:8
EXPOSE 8087
###

ADD target/test-docker-image-linux-k.jar test-docker-image-linux-k.jar

ENTRYPOINT ["java" ,"-jar", "/test-docker-image-linux-k.jar"]