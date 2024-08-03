pipeline {
    agent {
        label 'dev'
    }
    environment {
        // GIT_CREDENTIALS_ID = 'git-credentials'
        GIT_REPO_URL = 'https://github.com/dishaarora1996/Mon-Backend.git'
        WORKSPACE_DIR = '${env.WORKSPACE}/Mon-Backend'
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
                    def repoDir = WORKSPACE_DIR
                    sh "echo ${env.WORKSPACE}"
                    echo "Current directory: ${pwd()}"
                    if (fileExists("${repoDir}/.git")) {
                        echo 'Repository already cloned. Pulling latest changes...'
                        dir(repoDir) {
                            sh 'git reset --hard'  // Discard any local changes
                            sh 'git clean -fd'     // Remove untracked files
                            sh "git pull origin ${BRANCH}"
                        }
                    } else {
                        echo 'Cloning repository...'
                        sh "mkdir -p ${repoDir}" // Ensure the directory exists
                        sh "git clone ${REPO_URL} ${repoDir}"
                        dir(repoDir) {
                            sh "git checkout ${BRANCH}"
                        }
                    }
                    // List all files to ensure they are cloned or updated
                    sh "ls -lart ./*"

                    // List all branches in your repo
                    sh "git branch -a"

                    // Checkout to a specific branch in your repo
                    dir('Mon-Backend') {
                        sh "git checkout dev"
                    }


                    dir('Mon-Backend') {
                        sh "echo good!"
                        //sh 'python manage.py runserver 0.0.0.0:8000'
                    }
                }
            }
        }
    }
}
