pipeline {
    agent any
    environment {
        DEPLOY_DIR = '/var/www/yourproject'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm

                sh 'git log HEAD^..HEAD --pretty="%h %an - %s" > GIT_CHANGES'
                def lastChanges = readFile('GIT_CHANGES')
                slackSend color: "warning", message: "Started `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n_The changes:_\n${lastChanges}"
            }
        }
        stage ('Test') {
            steps {
                withCredentials([file(credentialsId: 'env-file-id', variable: 'ENV_FILE')]) {
                    sh 'virtualenv env -p python3.10'
                    sh 'chmod -R 777 env' // Ensure Jenkins has permission to write to the env directory
                    sh '. env/bin/activate'
                    sh 'env/bin/pip install -r requirements.txt'
                    sh 'cp $ENV_FILE env/.env'  // Copy the secret .env file to virtual environment directory
                    // Load environment variables using bash
                    sh '''
                        while IFS= read -r line; do
                            export "$line"
                        done < env/.env
                    '''
                    sh 'env/bin/python3.10 manage.py test'
                }
            }
        }

        stage ('Deploy') {
            steps {
                sshagent(['my-ssh-key']) { // Use the ID of your SSH credentials
                    // Run commands on the remote server
                    sh '''
                        ssh -o StrictHostKeyChecking=no ubuntu@13.232.17.60 << EOF
                        echo "Connected to remote server"
                        # Navigate to the project directory
                        cd "/home/ubuntu/project/Mon-Backend"
                        # Run the deployment script
                        ./deployment/deploy_prod.sh
                        EOF
                    '''
                }
            }
        }

    }
    post {
        success {
            slackSend color: "good", message: "Build successful: `${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"
        }
        failure {
            slackSend color: "danger", message: "Build failed :face_with_head_bandage: \n`${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"
        }
    }
}