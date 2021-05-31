pipeline {
    agent any
    stages {
        stage('build and run') {
            steps {
                sh('mvn spring-boot:run -Dspring-boot.run.profiles=dev &')
            }
        }

    }
}
