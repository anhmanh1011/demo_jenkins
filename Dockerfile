FROM ascdc/jdk8
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","app.jar"]
