FROM ascdc/jdk8
ARG JAR_FILE=target/*.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","target/*.jar"]
