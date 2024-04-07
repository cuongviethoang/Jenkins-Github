pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git "https://github.com/cuongviethoang/Jenkins-Github.git"
            }
        }
        stage('Build Docker Image') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub') {
                    sh 'docker build -t cuonghoang2k2/my-app-1.0:v1 .'
                    sh 'docker push cuonghoang2k2/my-app-1.0:v1'
                }
            }
        }
        
    }  
}

