pipeline {
    agent any
    
    stages {
        stage('Test') {
			steps {
                script {
                    docker.node {
                        docker.script.sh(script: "docker run -i rodrigormagalhaes/httparty-cucumber", returnStdout: false)
        			}
    			}
            }
		}
    }
}