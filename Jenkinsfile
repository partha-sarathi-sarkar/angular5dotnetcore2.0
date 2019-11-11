pipeline {
   /* environment {
    registry = "spartha1995/automatedbuild"
    registryCredential = 'dockerhub'
}*/


    agent any

    stages {
            stage('Build') {
            steps {
                echo "Build Project"
                bat "build.bat"
            }
        }

        stage('Unit test') {
            steps {
                echo 'Unit Test in progress'
            }
        }

        stage('Sonar Analysis') {
            steps {
                echo 'Sonar Analysis in progress'
            }
        }
        stage('Deploy') {
            steps {
                echo "Docker build and push"
                bat "deploy.bat"
            }
        }
    }
      post { 
        always { 
            cleanWs()
        }
    }
}
