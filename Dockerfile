#FROM ascdc/jdk8
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","app.jar"]


FROM ascdc/jdk8
RUN ls -la
USER root
RUN chmod 755 target
ADD target/jenkins-1.0.jar app.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","app.jar"]
