pipeline {
	agent any
	stages {
	    stage('Backend') {
	        when {
	            allOf {
                    branch 'master'
                    changeset 'backend-api/**'
                }
            }
            stages {
                stage('Build Backend') {
                    steps {
                        sh 'mvn clean install -DskipTests'
                    }
                }
                stage('Test Backend') {
                    steps {
                        sh 'mvn test'
                    }
                }
                stage('Deploy Backend') {
                    steps {
                        sh './deploy_back.sh'
                    }
                }
                stage('add JenkinsFile') {
                    steps {
                        sh './Jenkinsfile'
                    }
                }
                stage('add pom.xml') {
                    steps {
                        sh './pom.xml'
                    }
                }
                stage('add README.md') {
                    steps {
                        sh './README.md'
                    }
                }
            }
        }
        stage('Frontend') {
            when {
                allOf {
                    branch 'master'
                    changeset 'frontend/**'
                }
            }
            stages {
                stage('Install Frontend') {
                    steps {
                        sh 'cd frontend && npm i'
                    }
                }
                stage('Lint Frontend') {
                    steps {
                        sh 'cd frontend && npm run lint'
                    }
                }
                stage('Test Frontend') {
                    steps {
                        sh 'cd frontend && npm run test'
                    }
                }
                stage('Build Frontend') {
                    steps {
                        sh 'cd frontend && npm run build'
                    }
                }
                stage('Deploy Frontend') {
                    steps {
                        sh './deploy_front.sh'
                    }
                }
                stage('add JenkinsFile') {
                    steps {
                        sh './Jenkinsfile'
                    }
                }
            }
        }
    }
}
