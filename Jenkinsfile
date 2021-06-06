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
                sh('chmod -R 777 *')
            }
        }
        stage('build_docker') {
            steps {
                sh('docker build -t demo_jenkins .')
            }
        }
        stage('docker_run') {
            steps {
                sh('docker run -d -p 8090:8090 demo_jenkins')
            }
        }

    }
}
