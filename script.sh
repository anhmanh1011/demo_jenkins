
kill $(lsof -t -i:8090)
java -jar -Dspring.profiles.active=dev target/*.jar &