FROM ascdc/jdk8
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","target/jenkins-1.0.jar"]