pipeline {
    agent any 

    stages {
        stage("code-checkout") {
            steps {
               git branch: 'main', url: 'https://github.com/ash2code/CICD-projects.git'
            }
        }

        stage("terraform-init") {
            steps {
                script {
                    // Navigate to the directory where your Terraform configuration files are located
                    dir('terraform-project') {
                        // Initialize Terraform
                        sh "terraform init" 
                    }
                }
            }
        }

        stage("terraform-plan") {
            steps {
                script {
                    dir('terraform-project') {
                        // Generate Terraform execution plan
                        sh "terraform plan"
                    }
                }
            }
        }

        stage("terraform-apply") {
            steps {
                script {
                    dir('terraform-project') {
                        // Apply Terraform configuration
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
    }
}
