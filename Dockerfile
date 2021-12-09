FROM openjdk:8
VOLUME /tmp
###

ADD target/jenkins-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT exec java -jar jenkins-0.0.1-SNAPSHOT.jar