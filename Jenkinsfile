pipeline {
    agent any
    
    stages {
        stage('Clone') {
            steps {
                checkout scm
            }            
        }

        stage('Config') {
            steps {
                sh 'apt-get install ruby-full'
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