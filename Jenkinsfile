pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                retry(3) {
                    sh 'deploy.sh'
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
