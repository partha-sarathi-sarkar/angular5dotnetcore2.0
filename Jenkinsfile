pipeline {
    agent any

    stages {
            stage('Build') {
            steps {
                echo "Build Project"
                bat "build.bat"
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo "Docker build and push"
                bat "deploy.bat"
            }
        }
    }
}
