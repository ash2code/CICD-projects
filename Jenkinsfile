pipeline {
    agent any 
pipeline {
    agent any 

    stages {
        stage("code-checkout") {
            steps {
                git url: "https://github.com/ash2code/CICD-projects.git", branch: "main"
            }
        }

        stage("terraform-init") {
            steps {
                script {
                    try {
                        sh "terraform init"
                    } catch (err) {
                        echo "Error occurred during 'terraform init': ${err}"
                        currentBuild.result = 'FAILURE'
                    }
                }
            }
        }

        stage("terraform-plan") {
            steps {
                script {
                    try {
                        sh "terraform plan"
                    } catch (err) {
                        echo "Error occurred during 'terraform plan': ${err}"
                        currentBuild.result = 'FAILURE'
                    }
                }
            }
        }

        stage("terraform-apply") {
            steps {
                script {
                    try {
                        sh "terraform apply"
                    } catch (err) {
                        echo "Error occurred during 'terraform apply': ${err}"
                        currentBuild.result = 'FAILURE'
                    }
                }
            }
        }
    }
}

    
