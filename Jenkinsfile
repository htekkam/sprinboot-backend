pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                echo 'Starting the pipeline...'
            }
        }

        stage('Build') {
            steps {
                echo 'This is the Build stage'
            }
        }

        stage('Test') {
            steps {
                echo 'This is the Test stage'
            }
        }

        stage('Deploy') {
            steps {
                echo 'This is the Deploy stage'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed'
        }
    }
}
