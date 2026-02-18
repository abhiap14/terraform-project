pipeline {
  agent any

  parameters {
    choice(name: 'ENV', choices: ['dev','prod'], description: 'Select environment')
  }

  stages {

    stage('Checkout') {
      steps { checkout scm }
    }

    stage('Init') {
      steps {
        sh 'terraform init -backend-config="key=${ENV}/terraform.tfstate"'
      }
    }

    stage('Validate') {
      steps { sh 'terraform validate' }
    }

    stage('Plan') {
      steps {
        sh 'terraform plan -var-file=${ENV}.tfvars -out=tfplan'
      }
    }

    stage('Approval') {
      when { expression { params.ENV == 'prod' } }
      steps {
        input "Approve PROD?"
      }
    }

    stage('Apply') {
      steps {
        sh 'terraform apply tfplan'
      }
    }
  }
}
