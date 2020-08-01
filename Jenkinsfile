
pipeline {
   agent {dockerfile true}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat "mvn clean install"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh "docker build -f Dockerfile -t helloworld ."
               sh "docker run -p 8080:8080 -t helloworld"
            }
        }
                
    }
}
