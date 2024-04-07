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
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t cuonghoang2k2/test-build-image:v1 .'
                    sh 'docker push cuonghoang2k2/test-build-image:v1'
                }
            }
        }
        
    }
     
}