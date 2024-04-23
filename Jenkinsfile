pipeline {
    agent any
    
    stages {
        stage('CleanUp') {
            steps {
                // Build your Docker images if needed
                script {
                    sh 'docker compose down'
                }
            }
        }
        stage('Build') {
            steps {
                // Build your Docker images if needed
                script {
                    sh 'docker build -t web-registration:0.0.1 ./web-registration'
                }
            }
        }
        stage('Deploy') {
            steps {
                // Run Docker Compose
                script {
                    sh 'docker compose up -d --build'
                }
            }
        }
    }
}
