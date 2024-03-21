pipeline{
 
    agent any
 
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerApp')
    }
 
    stages {
        
        stage('gitclone') {
 
            steps {
                git 'https://github.com/tharun1461/DevOps_Assignment2.git'
            }
        }
 
        stage('Build') {
 
            steps {
                sh 'docker build -t tharun1461/assignment4App_test:latest .'
            }
        }
 
        stage('Login') {
 
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
 
        stage('Push') {
 
            steps {
                sh 'docker push tharun1461/assignment4App_test:latest'
            }
        }
    }
 
    post {
        always {
            sh 'docker logout'
        }
    }
 
}