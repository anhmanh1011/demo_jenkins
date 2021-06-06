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
                script {
                    try {
                        sh 'rm -rf DockerFolder'
                    } catch (Exception e) {
                        echo 'xoa DockerFolder:  that bai' + e.toString()
                    }

                }
                sh('mkdir DockerFolder')
                sh('cp -rf . DockerFolder')
                sh('cd DockerFolder')
                sh('chmod -R 777 DockerFolder')

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
