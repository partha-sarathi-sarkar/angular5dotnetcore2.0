pipeline {
   /* environment {
    registry = "spartha1995/automatedbuild"
    registryCredential = 'dockerhub'
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
        stage('Login to dockerhub') {
            steps {
                echo "Docker build and push"
                bat label: '', script: 'docker login -u $DOCKERHUB_USERNAME --password-stdin'
            }
        }
        stage('Docker Image Tag') {
            steps {
                echo "Docker build and push"
                bat label: '', script: 'docker tag automatedbuilddemo $DOCKERHUB_USERNAME:$BUILD_NUMBER'
            }
        }
        stage('Docker Push') {
            steps {
                echo "Docker build and push"
                bat label: '', script: 'docker push $DOCKERHUB_USERNAME:$BUILD_NUMBER'
            }
        }
        
    }
      post { 
        always { 
            cleanWs()
        }
    }
}
