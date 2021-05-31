pipeline {
    agent any


    stages {
        stage('build') {
            steps {
                sh('nohup mvn spring-boot:run -Dspring-boot.run.profiles=dev&')
            }
        }


    }
}
