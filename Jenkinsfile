pipeline {
    agent { 
        docker { image 'ruby:2.4.2' } 
    }
    
    stages {        
        stage('build') {
            steps {
                sh 'docker run ruby'
                sh 'ruby --version'
            }
        }
    }
}