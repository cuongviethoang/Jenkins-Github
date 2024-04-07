pipeline {
    agent any 
    stages {
        stage('Clone') {
            steps {
                git "https://github.com/cuongviethoang/Jenkins-Github.git"
            }
        }
        stage('Build Docker Image') {         
            steps{                
	            sh 'docker build -t cuonghoang2k2/my-app-2.0:v1 .'           
                echo 'Build Image Completed'                
            }           
        }
        stage('Login to Docker Hub') {         
            steps{                            
	            sh 'echo Quenmatkhau*123456 | sudo docker login -u cuonghoang2k2 --password-stdin'                 
	            echo 'Login Completed'                
            }           
        }               
        stage('Push Image to Docker Hub') {         
            steps{                            
	            sh 'docker push cuonghoang2k2/my-app-2.0:v1'                 
                echo 'Push Image Completed'       
            }           
        }         
    }  
}
