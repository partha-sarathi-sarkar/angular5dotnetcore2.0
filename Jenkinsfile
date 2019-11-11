pipeline {
    environment {
    registry = "spartha1995/automatedbuilddemo"
    registryCredential = 'dockerhub'
}

    agent any

stages {

    stage('Build Image') {
    steps{
      script {
        bat "build.bat"
      }
    }
  }
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
