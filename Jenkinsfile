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
                sh "make docker-start"
                echo "falta el curl"
            }
        }
        stage('Deploy') {
            steps {
                echo "deploy"
                sh "make release"
                sh "make deploy.ghpages"
            }
        }
    }
}
