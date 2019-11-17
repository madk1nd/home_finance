pipeline {
	agent any
	stages {
	    stage('Backend') {
	        when {
                branch "master"
                changeset "backend-api/**"
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
            }
        }
        stage('Frontend') {
            when {
                branch "master"
                changeset "frontend/**"
            }
            stages {
                stage('Install Frontend') {
                    steps {
                        sh 'npm i'
                    }
                }
                stage('Lint Frontend') {
                    steps {
                        sh 'npm run lint'
                    }
                }
                stage('Test Frontend') {
                    steps {
                        sh 'npm run test'
                    }
                }
                stage('Build Frontend') {
                    steps {
                        sh 'npm run build'
                    }
                }
                stage('Deploy Frontend') {
                    steps {
                        sh './deploy_front.sh'
                    }
                }
            }
        }
    }
}
