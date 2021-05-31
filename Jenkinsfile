pipeline {
    agent any


    stages {
        stage('build') {
            steps {
                sh('nohub mvn spring-boot:run -Dspring-boot.run.profiles=dev&')
            }
        }


    }
}
