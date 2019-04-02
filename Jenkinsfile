pipeline {
    agent { 
        docker { image 'ruby' } 
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
                sh 'wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz'
                sh 'tar -xvzf geckodriver*'
                sh 'chmod +x geckodriver'
                sh 'cp geckodriver /usr/local/bin/'
            }
			

		}

        stage('Test') {
			steps {
                sh 'cucumber'
            }
		}
    }
}