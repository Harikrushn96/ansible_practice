pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean install package'
            }
        }
        stage ('docker build') {
            steps {
                sh 'docker build -t $nexus_ip/first:latest .'
            }
        }
        stage ('PushtoNexus') {
            steps {
                script {
                    sh '''
                        docker login -u admin -p admin123 54.205.225.212:8083
                        docker push $nexus_ip/first:latest
                        docker rmi $nexus_ip/first:latest
                        '''
             }
          }
      }
   }
}
