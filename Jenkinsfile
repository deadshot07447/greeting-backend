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
                    sh "ENV_TAG=qa APP_PORT=3001 DB_PORT=3307 docker compose -p ${APP_NAME}-qa up -d --force-recreate"
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
                    sh "ENV_TAG=prod APP_PORT=3002 DB_PORT=3308 docker compose -p ${APP_NAME}-prod up -d --force-recreate"
                }
            }
        }
    }
}
