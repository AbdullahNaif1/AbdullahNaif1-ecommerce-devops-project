pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('AbdullahNaif1-ecommerce-devops-project')
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    docker.image('AbdullahNaif1-ecommerce-devops-project').inside {
                        sh 'npm test'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh './k8s-deploy.sh'
                }
            }
        }
    }
}

