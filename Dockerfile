FROM ascdc/jdk8
CMD pwd
ARG JAR_FILE=/target/jenkins-1.0.jar
COPY ${JAR_FILE} dataCollector.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","/target/jenkins-1.0.jar"]