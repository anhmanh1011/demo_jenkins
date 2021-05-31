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
                sh('java -jar -Dspring.profiles.active=prod target/*.jar')
            }
        }
    }
}
