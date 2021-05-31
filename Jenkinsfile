pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
        jdk 'JAVA_HOME'
    }

    stages {
        stage('build') {
            steps {
                sh('MAVEN_HOME package')
            }
        }
        stage('build') {
            steps {
                echo 'done2'
            }
        }
    }
}
