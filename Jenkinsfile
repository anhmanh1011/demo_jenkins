pipeline {
    agent any


    stages {
        stage('build') {
            steps {
                sh('mvn package')
            }
        }
        stage('build2') {
            steps {
                echo 'done2'
            }
        }
    }
}
