pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh('mvn clean install -DskipTests=false')
            }
        }
        stage('add_Permission') {
            steps {
                def exists = fileExists 'DockerFolder'

                if (!exists) {
                    sh "mkdir DockerFolder"
                }
                sh "cp Dockerfile DockerFolder"
                sh "cd DockerFolder"
            }
        }
        stage('build_docker') {
            steps {
                sh('docker build -t demo_jenkins:1 .')
            }
        }
        stage('docker_run') {
            steps {
                sh('docker run demo_jenkins:1 -p 8090:8090')
            }
        }

    }
}
