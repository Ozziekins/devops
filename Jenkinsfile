pipeline {
    agent { 
        docker { 
            image 'python:3.9-alpine3.14' 
            // args '-u 0 -v $HOME/.cache:/root/.cache -v /var/run/docker.sock:/var/run/docker.sock'
            args '-v /var/run/docker.sock:/var/run/docker.sock -u root:root --network host'
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

        stage('Build') {
            steps {
                echo 'Building...'
                sh 'python3 manage.py runserver'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'pytest'
            }
        }
    }
}