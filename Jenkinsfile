pipeline {
    agent any


    stages {
        stage('build') {
            steps {
                sh('mvn -v')
            }
        }
        stage('build2') {
            steps {
                echo 'done2'
            }
        }
    }
}
