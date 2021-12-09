FROM openjdk:8
EXPOSE 8087
###

ADD target/jenkins-0.0.1-SNAPSHOT.jar app.jar jenkins-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT exec java -jar jenkins-0.0.1-SNAPSHOT.jar