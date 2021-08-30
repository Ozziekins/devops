pipeline {
    agent { 
        docker { 
            image 'python:3.9-alpine3.14' 
        } 
    }

    stages {
        stage('Change directory') {
            steps {
                echo 'Changing directory...'
                checkout scm
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