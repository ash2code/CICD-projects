pipeline {
    agent any 

    stages {
        stage("code-checkout") {
            steps {
                git url: "https://github.com/your-username/your-repo.git", branch: "main"
            }
        }

        stage("terraform-init") {
            steps {
                script {
                    // Navigate to the directory where your Terraform configuration files are located
                    dir('terraform') {
                        // Initialize Terraform
                        sh "terraform init"
                    }
                }
            }
        }

        stage("terraform-plan") {
            steps {
                script {
                    dir('terraform') {
                        // Generate Terraform execution plan
                        sh "terraform plan"
                    }
                }
            }
        }

        stage("terraform-apply") {
            steps {
                script {
                    dir('terraform') {
                        // Apply Terraform configuration
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
    }
}
