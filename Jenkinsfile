pipeline {
    environment {
    registry = "spartha1995/automatedbuilddemo"
    registryCredential = 'dockerhub'
}

    agent any

stages {
  stage('Building image') {
    steps{
      script {
        docker.build registry + ":%BUILD_NUMBER%"
      }
    }
  }
}
    post { 
        always { 
            cleanWs()
        }
    }
}
