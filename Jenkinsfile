pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Verify Environment') {
            steps {
                echo 'Running on Jenkins'
                sh 'pwd'
                sh 'ls -la'
            }
        }
    }

    post {
        success {
            echo 'Backend pipeline completed successfully.'
        }

        failure {
            echo 'Backend pipeline failed.'
        }

        always {
            echo 'Pipeline execution finished.'
        }
    }
}