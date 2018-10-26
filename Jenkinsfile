pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "build"
                sh "make docker-workspace"
                sh "make docker-install"
            }
        }
        stage('Test') {
            steps {
                echo "test"
            }
        }
        stage('Deploy') {
            steps {
                echo "deploy"
            }
        }
    }
}
