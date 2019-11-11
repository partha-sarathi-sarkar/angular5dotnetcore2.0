pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script{
                    bat "build.bat"
                }
                }
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
