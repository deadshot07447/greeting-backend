pipeline {
    agent any

    options {
        skipDefaultCheckout()
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Verify Environment') {
            steps {
                sh 'pwd'
                sh 'which git'
                sh 'git --version'
                sh 'which node || true'
                sh 'node --version || true'
                sh 'which npm || true'
                sh 'npm --version || true'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm ci'
            }
        }
    }

    post {
        success {
            echo 'Backend CI completed successfully.'
        }

        failure {
            echo 'Backend CI failed.'
        }

        always {
            echo 'Pipeline execution finished.'
        }
    }
}