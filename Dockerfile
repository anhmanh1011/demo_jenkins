FROM ascdc/jdk8
ARG JAR_FILE=/target/*.jar
COPY target/${JAR_FILE} dataCollector.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","dataCollector.jar"]