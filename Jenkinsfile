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

        stage('Changing directory') {
            steps {
                echo 'Changing directory...'
                sh 'cd app_python/'
            }
        }

        stage('Requirements') {
            steps {
                echo 'Installing requirements...'
                sh 'pip3 install -r app_python/requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'cd pythonapp'
                sh 'pytest'
            }
        }
    }
}