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
        stage('build_docker') {
            steps {
                sh('docker build -f Dockerfile')
            }
        }
        stage('docker_run') {
            steps {
                sh('docker run -p 8090:8090')
            }
        }

    }
}
