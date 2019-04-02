pipeline {
    agent { 
        docker { image 'ruby:2.4.2' } 
    }
    
    stages {
        stage('Clone') {
            steps {
                checkout scm
            }            
        }

        stage('Build') {
            steps {
                sh 'ruby --version'
            }
        }

        stage('Config') {
            steps {
                sh 'gem install bundler'
                sh 'bundle install'
            }
			

		}

        stage('Test') {
			steps {
                sh 'cucumber'
            }
		}
    }
}