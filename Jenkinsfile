pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')  // from Jenkins creds
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/bigb579/aws-yaml.git'
            }
        }
        stage('Parse YAML Config') {
            steps {
                sh 'python3 scripts/parse_yaml.py environments/dev/config.yaml environments/dev/config.auto.tfvars.json'
            }
        }
        stage('Terraform Init') {
            steps {
                dir('environments/dev') {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                dir('environments/dev') {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                dir('environments/dev') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}

