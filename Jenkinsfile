pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
        jdk 'JAVA_HOME'
    }

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
