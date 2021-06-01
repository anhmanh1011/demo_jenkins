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
                sh('docker build - < Dockerfile -t demo_jenkins:1')
            }
        }
        stage('docker_run') {
            steps {
                sh('docker run demo_jenkins:1 -p 8090:8090')
            }
        }

    }
}
