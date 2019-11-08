pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script{
                retry(3) {
                    sh label: '', script: '''#!/bin/bash
                    set -ev
                    #Deploy to Dockerhub
                     docker build -t spartha1995/automatedbuilddemo:latest .
                     docker push pspartha1995/automatedbuilddemo:latest'''
                }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
