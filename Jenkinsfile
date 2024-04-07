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
                sh 'docker build -t cuonghoang2k2/my-app-2.0 .'
                sh 'docker push cuonghoang2k2/my-app-2.0:v1'
                
            }
        }
        
    }  
}
