pipeline {
    agent {
        label 'dev'
    }
    environment {
        // GIT_CREDENTIALS_ID = 'git-credentials'
        GIT_REPO_URL = 'https://github.com/dishaarora1996/Mon-Backend.git'
        BRANCH = 'dev'
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

                    sh "echo ${env.WORKSPACE}"
                    echo "Current directory: ${pwd()}"
                    if (fileExists("Mon-Backend")) {
                        echo 'Repository already cloned. Pulling latest changes...'
                        dir("Mon-Backend") {
                            sh 'git reset --hard'  // Discard any local changes
                            sh 'git clean -fd'     // Remove untracked files
                            sh "git pull origin ${env.BRANCH}"
                        }
                    } else {
                        echo 'Cloning repository...'
                        sh "git clone ${GIT_REPO_URL}"
                        dir("Mon-Backend") {
                            sh "echo current directory pwd"
                            sh "pwd"
                            sh "git checkout ${env.BRANCH}"
                            sh "chmod +x scripts/*.sh"
                            sh "./scripts/instance_os_dependencies.sh"
                            sh "./scripts/python_dependencies.sh"
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
