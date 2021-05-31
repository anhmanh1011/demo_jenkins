pipeline {
    agent any


    stages {
        stage('clean') {
            steps {
                sh('mvn clean')
            }
        }
        stage('build') {
            steps {
                sh('mvn package')
            }
        }
        stage('build2') {
            steps {
                sh('BUILD_ID=dontKillMe nohup  java -jar -Dspring.profiles.active=dev target/*.jar &')
            }
        }
    }
}
