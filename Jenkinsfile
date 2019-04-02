pipeline {
    agent { 
        docker { image 'ruby:2.4.2' } }
    
    stages {

        agent any
        
        stage("Fix the permission issue") {
            steps {
                sh "sudo chown root:jenkins /run/docker.sock"
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