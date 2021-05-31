pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh('mvn package')
            }
        }
        stage('build') {
            steps {
                echo 'done2'
            }
        }
    }
}
