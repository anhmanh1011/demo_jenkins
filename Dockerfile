FROM ascdc/jdk8
ARG JAR_FILE=target/jenkins-1.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","/app.jar"]