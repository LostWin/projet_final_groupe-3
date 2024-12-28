pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t ic-webapp:${VERSION} .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'docker run --name test-ic-webapp ic-webapp:${VERSION}'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    ansiblePlaybook playbook: 'odoo_role.yml'
                    ansiblePlaybook playbook: 'pgadmin_role.yml'
                }
            }
        }
    }
}
