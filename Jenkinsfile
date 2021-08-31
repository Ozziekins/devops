pipeline {
    agent { 
        docker { 
            image 'python:3.9-alpine3.14' 
            args '-v /var/run/docker.sock:/var/run/docker.sock -u 0 --network host'
        } 
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Requirements') {
            steps {
                echo 'Installing requirements...'
                sh 'pip3 install -r app_python/requirements.txt'
            }
        }

        stage('List entries') {
            steps {
                sh 'ls'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh '''
                    cd app_python/pythonapp/
                    pytest worldtime/tests.py
                '''
            }
        }
    }
}