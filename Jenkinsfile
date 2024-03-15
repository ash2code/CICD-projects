pipeline {
    agent any 

    stages {
        stage("code-checkout") {
            steps {
                git url: "https://github.com/ash2code/CICD-projects.git", branch: "main"
            }
        }
    }
    stage("terraform-init") {
        steps {
            script {
                sh "terraform init"
            }
        }
    }
}
