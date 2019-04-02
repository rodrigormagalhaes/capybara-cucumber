pipeline {
    agent { 
        docker { image 'ruby:2.4.2' } 
    }
    
    stages {        
         stage('Initialize') {
             steps {
                 def dockerHome = tool 'myDocker'
                 env.PATH = "${dockerHome}/bin:${env.PATH}"
             }
        }

        stage('build') {
            steps {
                sh 'ruby --version'
            }
        }
    }
}