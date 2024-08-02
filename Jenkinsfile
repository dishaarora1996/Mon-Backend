pipeline {
    agent any
    environment {
        GIT_CREDENTIALS_ID = 'git-credentials'
        GIT_REPO_URL = 'github.com/arupkuma69/TazosMon-Backend.git'
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
                    if (fileExists('TazosMon-Backend')) {
                        sh "echo pull...."
                        dir('TazosMon-Backend') {
                            sh "git pull origin dev"
                        }
                    } else {
                        sh "echo clone...."
                        withCredentials([string(credentialsId: 'git-access-token', variable: 'GIT_TOKEN')]){
                            sh "git clone https://oauth2:${GIT_TOKEN}@${env.GIT_REPO_URL}"
                        }

                        // install os dependencies
                        sh "sudo apt update"
                        sh "sudo apt install -y python3-pip"
                        sh "sudo apt install -y nginx"
                        sh "sudo apt install -y virtualenv"

                        // install python dependencies
                        dir('TazosMon-Backend') {
                            // Create virtual environment
                            sh "echo Creating virtual environment..."
                            sh "virtualenv venv"

                            // Activate virtual environment
                            sh "echo Activating virtual environment..."
                            
                            sh "pip -V"

                            // Install dependencies
                            

                            sh "echo Dependencies installed successfully."
                        }

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

                    // Install Miniconda
                    // Check if Miniconda is already installed
                    if (!fileExists('/home/ubuntu/miniconda')) {
                        // Install Miniconda
                        sh 'wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda3-latest-Linux-x86_64.sh'
                        sh 'bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda'
                        sh 'export PATH="$HOME/miniconda/bin:$PATH"'
                    } else {
                        echo 'Miniconda is already installed. Skipping installation.'
                    }

                    // next steps
                    // Create and activate virtual environment with Python 3
                    //sh 'conda create -n myenv python=3.12 -y'
                    //sh 'source activate myenv'
                    
                    // Install dependencies
                    //sh 'pip install -r TazosMon-Backend/requirements.txt'
                    
                    // Run the server
                    dir('TazosMon-Backend') {
                        sh "echo good!"
                        //sh 'python manage.py runserver 0.0.0.0:8000'
                    }
                }
            }
        }
    }
}
