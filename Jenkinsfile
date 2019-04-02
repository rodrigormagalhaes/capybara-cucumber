pipeline {
    agent any
    
    stages {

        stage("Fix the permission issue") {
            steps {
                sh 'sudo docker pull ruby:2.4.2'
            }
        }
        
        stage('build') {
            steps {
                sh 'ruby --version'
            }
        }

        stage('clone') {
            steps {
                checkout scm
            }            
        }
    }
}