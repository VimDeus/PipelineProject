pipeline {
    agent any

    tools {
        maven 'M3'
    }

    stages {
        stage('Checkout') {
            steps {
                // This step checks out the code from the repository
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // This will execute 'mvn clean install' in the shell to build the project
                echo 'Building the project...'
                sh 'mvn clean install'
            }
        }

        stage('Run Unit Tests') {
            steps {
                // This will execute 'mvn test' in the shell to run unit tests
                echo 'Running unit tests...'
                sh 'mvn test'
            }
        }
    }

    post {
        // This section contains actions that are run after the pipeline completes
        always {
            echo 'This will always run'
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
