node {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                echo 'this is build stage'
            }

            post {
                 echo 'stage build completed'
                }
            }
        stage('Compile') {
            steps {
                // Get some code from a GitHub repository
                echo 'this is compile stage'
            }

            post {
                 echo 'stage compile completed'
                }
            }
         stage('document') {
            steps {
                // Get some code from a GitHub repository
                echo 'this is document stage'
            }

            post {
                 echo 'stage document completed'
                }
            }
        }
    }
}
