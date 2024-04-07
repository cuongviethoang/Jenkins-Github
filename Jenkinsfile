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
                sh 'sudo docker build -t cuonghoang2k2/my-app-2.0 .'
                sh 'sudo docker push cuonghoang2k2/my-app-2.0:v1'
                
            }
        }
        
    }  
}
