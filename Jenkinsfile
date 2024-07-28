#!groovy

node {

    try {
        stage 'Checkout' {
            checkout scm

            sh 'git log HEAD^..HEAD --pretty="%h %an - %s" > GIT_CHANGES'
            def lastChanges = readFile('GIT_CHANGES')
            slackSend color: "warning", message: "Started `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n_The changes:_\n${lastChanges}"
        }
        stage 'Test' {
            withCredentials([file(credentialsId: 'env-file-id', variable: 'ENV_FILE')]) {
                sh 'python3 -m venv env'
                sh 'source env/bin/activate'
                sh 'pip install -r requirements.txt'
                sh 'cp $ENV_FILE env/.env'  // Copy the secret .env file to virtual environment directory
                sh 'set -o allexport; source env/.env; set +o allexport' // Load environment variables
                sh 'python manage.py test --testrunner=blog.tests.test_runners.NoDbTestRunner'
            }
        }

        stage 'Deploy' {
            sh './deployment/deploy_prod.sh'
        }

        stage 'Publish results' {
            slackSend color: "good", message: "Build successful: `${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"
        }
    }

    catch (err) {
        slackSend color: "danger", message: "Build failed :face_with_head_bandage: \n`${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"

        throw err
    }

}
