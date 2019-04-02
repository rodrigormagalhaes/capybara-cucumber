pipeline {
    agent { 
        docker { 
            image 'ruby:2.4.2' 
             args '-u root:sudo'
        } 
    }
    stages {
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