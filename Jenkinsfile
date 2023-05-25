pipeline {
  agent any

  environment {
    DOCKER_REGISTRY = "docker-registry.com" //name registry were will be pushed images
    DOCKER_REGISTRY_CREDENTIALS = credentials("registry-credentials-id") // indentificator for authentication in Docker registry
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build and push Docker images') {
      steps {
        sh 'docker-compose build'
        sh 'docker-compose push'
      }
    }

    stage('Deploy') {
      steps {
        script {
          sh 'ssh user@example.com "docker-compose pull && docker-compose up -d"'
        }
      }
    }
  }
}