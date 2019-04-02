pipeline {
    agent { 
        docker { image 'ruby:2.4.2' } 
    }
    
    stages {
        stage('clone') {
            steps {
                checkout scm
            }            
        }

        stage('build') {
            steps {
                sh 'ruby --version'
            }
        }

        stage(name: "Config") {
			sh "bundle install"

		}

        stage(name: "Test") {
			sh "cucumber"

		}

    }
}