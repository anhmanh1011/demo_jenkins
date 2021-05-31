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
                sh('sh script.sh')
            }
        }
    }
}
