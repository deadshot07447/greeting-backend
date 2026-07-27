pipeline {
    agent any
    environment {
        APP_NAME = 'greeting-backend'
    }
    stages {
        stage('Build and Deploy QA') {
            when {
                branch 'qa'
            }
            steps {
                script {
                    echo "Building and deploying to QA..."
                    sh "docker build -t ${APP_NAME}:qa ."
                    sh "docker rm -f ${APP_NAME}-qa || true"
                    sh "docker run -d --name ${APP_NAME}-qa -p 3001:3000 ${APP_NAME}:qa"
                }
            }
        }
        stage('Build and Deploy Prod') {
            when {
                branch 'prod'
            }
            steps {
                script {
                    echo "Building and deploying to Prod..."
                    sh "docker build -t ${APP_NAME}:prod ."
                    sh "docker rm -f ${APP_NAME}-prod || true"
                    sh "docker run -d --name ${APP_NAME}-prod -p 3002:3000 ${APP_NAME}:prod"
                }
            }
        }
    }
}
