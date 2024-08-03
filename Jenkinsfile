pipeline {
    agent any
    environment {
        // GIT_CREDENTIALS_ID = 'git-credentials'
        GIT_REPO_URL = 'https://github.com/dishaarora1996/Mon-Backend.git'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                script {

                    echo "Current directory: ${pwd()}"
                    if (fileExists('TazosMon-Backend')) {
                        sh "echo pull...."
                        dir('TazosMon-Backend') {
                            sh "git pull origin dev"
                        }
                    } else {
                        sh "echo clone...."
                        // withCredentials([string(credentialsId: 'git-access-token', variable: 'GIT_TOKEN')]){
                        //     sh "git clone https://oauth2:${GIT_TOKEN}@${env.GIT_REPO_URL}"
                        // }

                        sh "git clone ${env.GIT_REPO_URL}"


                        sh "echo Dependencies installed successfully."


                        sh "echo python depenencies"
                    }
                    // List all files to ensure they are cloned or updated
                    sh "ls -lart ./*"

                    // List all branches in your repo
                    sh "git branch -a"

                    // Checkout to a specific branch in your repo
                    dir('TazosMon-Backend') {
                        sh "git checkout dev"
                    }


                    dir('TazosMon-Backend') {
                        sh "echo good!"
                        //sh 'python manage.py runserver 0.0.0.0:8000'
                    }
                }
            }
        }
    }
}
