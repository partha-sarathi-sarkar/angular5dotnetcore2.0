pipeline {
   /* environment {
    dockerhub_username = '$DOCKERHUB_USERNAME'
    dockerhub_password = '$DOCKERHUB_PASSWORD'
}*/


    agent any

    stages {
            stage('Build') {
            steps {
               script{
                   bat label: '', script: 'dotnet build angular5dotnetcore2.0/dotnetcoreplusangular5Template/dotnetcoreplusangular5Template.csproj'
               }
            }
        }

          stage('Publish') {
            steps {
               script{
                   bat label: '', script: 'dotnet msbuild angular5dotnetcore2.0/dotnetcoreplusangular5Template/dotnetcoreplusangular5Template.csproj -t:Publish -p:Configuration=Release'
               }
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
        stage('Build Docker Image') {
            steps {
                echo "Docker build and push"
                bat label: '', script: 'docker build -t automatedbuilddemo .'
            }
        }
        /*stage('Login to dockerhub') {
            steps {
               bat "dockerlogin.bat"
            }
        }*/
        stage('Docker Image Tag') {
            steps {
                echo "Docker build and push"
                bat label: '', script: 'docker tag automatedbuilddemo spartha1995/automatedbuilddemo:%BUILD_NUMBER%'
            }
        }
        stage('Docker Push') {
            steps {
                echo "Docker build and push"
                bat label: '', script: 'docker push spartha1995/automatedbuilddemo:%BUILD_NUMBER%'
            }
        }
        
    }
      post { 
        always { 
            cleanWs()
        }
    }
}
