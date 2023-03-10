pipeline {
    agent any
    parameters {
        string(name: 'environment', defaultValue: 'terraform', description: 'Workspace/environment file to use for deployment')
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/safayetjamil647/jenkins-aws-node-docker-ecs']]])            

          }
        }
        
        stage ("terraform init") {
            steps {
                sh 'terraform workspace new ${environment}'
                sh 'terraform init'
            
                sh "terraform plan -input=false -out tfplan "
                sh 'terraform show -no-color tfplan > tfplan.txt'
            }
        }

        stage ("terraform Action") {
            steps {
                sh ('terraform apply -input=false tfplan') 
           }
        }
        
    }
}
