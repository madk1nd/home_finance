pipeline {
	agent any
	stages {
	    when {
            branch "master"
            changeset "backend-api/**"
        }
		stage('Build') {
			steps {
				sh 'mvn clean install -DskipTests'
			}
		}
		stage('Test') {
			steps {
				sh 'mvn test'
			}
		}
		stage('Deploy') {
            steps {
                sh './deploy_back.sh'
            }
        }
	}
	stages {
        when {
            branch "master"
            changeset "frontend/**"
        }
        stage('Install') {
            steps {
                sh 'npm i'
            }
        }
        stage('Lint') {
            steps {
                sh 'npm run lint'
            }
        }
        stage('Test') {
            steps {
                sh 'npm run test'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                sh './deploy_front.sh'
            }
        }
    }
}
