pipeline {
    agent { 
        docker { image 'ruby:2.4.2' } 
                         def dockerHome = tool 'myDocker'
                 env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    
    stages {        
        stage('build') {
            steps {
                sh 'ruby --version'
            }
        }
    }
}