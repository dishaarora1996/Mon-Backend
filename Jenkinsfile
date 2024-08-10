pipeline {
    agent {
        label 'dev'
    }
    environment {
        // GIT_CREDENTIALS_ID = 'git-credentials'
        GIT_REPO_URL = 'https://github.com/dishaarora1996/Mon-Backend.git'
        BRANCH = 'dev'
        S3_BUCKET = 'bba-bucket-list'
        S3_BACKUP_PATH = 'backups/django_project/'
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
                            sh 'git clean -fd'
                            sh "git pull origin ${env.BRANCH}"
                            sh "chmod +x scripts/*.sh"     // Remove untracked files
                            sh "./scripts/deploy_prod.sh"
                        }
                    } else {
                        echo 'Cloning repository...'
                        sh "git clone ${GIT_REPO_URL}"
                        dir("Mon-Backend") {
                            sh "git checkout ${env.BRANCH}"
                            sh "chmod +x scripts/*.sh"
                            sh "./scripts/instance_os_dependencies.sh"
                            sh "./scripts/python_dependencies.sh"
                            sh "./scripts/install_database.sh"
                            sh "./scripts/gunicorn.sh"
                            sh "./scripts/nginx.sh"
                            sh "./scripts/start_app.sh"
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
        stage('Build Artifacts') {
            steps {
                // Remove the old tarball if it exists
                sh 'rm -f django_project_backup.tar.gz'
        
                // Tar the entire project directory, excluding the previous tarball
                sh 'tar --exclude=django_project_backup.tar.gz -czvf django_project_backup.tar.gz *'
            }
        }
    }
    post {
        success {
            script {
                // Publish artifacts to S3 on successful build
                def s3Profile = 'S3-Artifact-Demo'
                def filePath = 'django_project_backup.tar.gz'
                def bucket = "${env.S3_BUCKET}"
                def destPath = "${env.S3_BACKUP_PATH}${env.BRANCH}/"

                s3Upload consoleLogLevel: 'INFO',
                         dontSetBuildResultOnFailure: false,
                         entries: [[bucket: bucket, sourceFile: filePath, storageClass: 'STANDARD', selectedRegion: 'ap-south-1', uploadFromSlave: true, path: destPath]],
                         profileName: s3Profile
            }

            // Optionally, archive the artifact in Jenkins
            archiveArtifacts artifacts: 'django_project_backup.tar.gz', allowEmptyArchive: true
        }

        always {
            // Clean up the workspace if needed
            cleanWs()
        }
    }
}
