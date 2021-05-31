pipeline {
    agent any


    stages {
        stage('build') {
            steps {
                sh('mvn spring-boot:run -Dspring-boot.run.profiles=dev')
            }
        }

    }
}
