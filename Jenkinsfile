pipeline {
    agent any
    environment{
        MY_FILE = fileExists 'DockerFolder'
    }
    stages {
        stage('build') {
            steps {
                sh('mvn clean install -DskipTests=false')
            }
        }
        stage('add_Permission') {
            steps {
                when { expression { MY_FILE == 'false' } }
                steps {
                    sh "mkdir DockerFolder"
                    sh "cp . DockerFolder"
                    sh "cd DockerFolder"
                }
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
