
pipeline {
    agent { 
        docker { 
            image 'python:3.9-alpine3.14' 
        } 
    
    }

    stages {
        stage('Change directory') {
            steps {
                sh 'cd app_python/'
            }
        }

        stage('Requirements') {
            steps {
                sh 'pip3 install -r app_python/requirements.txt'
            }
        }

        stage('Test') {
            steps {
                sh 'pytest'
            }
        }
    }
}