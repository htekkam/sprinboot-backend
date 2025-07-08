pipeline {
    agent any

    

    stages {
        stage('Compile and Test') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/htekkam/springboot-backend.git',
                credentialsId: 'ab7ec4ba-c5d0-4cc9-9edd-3f67d9708c46'

                // Run Maven on a Unix agent.
                bat "mvn clean compile test"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
            
            }
			
		 stage('Build spring boot war file') {
            steps {
              // Run Maven on a Unix agent.
                bat "mvn clean package spring-boot:repackage"

            }
            
            }
        stage('create docker image') {
            steps {
              // Run Maven on a Unix agent.
                bat "docker build -t th00870620/springboot-backend ."

            }
            
            }
        stage('Hello') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId:'dockerhub-credentials',
                    usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){
                        echo "This works: $USERNAME $PASSWORD"
                        bat "docker login --username $USERNAME --password $PASSWORD"
                        bat "docker push th00870620/springboot-backend"
                        
                    }
                }
            }
        }
        }
    }

