FROM ascdc/jdk8
ARG JAR_FILE=jenkins-1.0.jar
COPY target/${JAR_FILE} dataCollector.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","target/jenkins-1.0.jar"]