pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
        jdk 'JAVA_HOME'
    }

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
