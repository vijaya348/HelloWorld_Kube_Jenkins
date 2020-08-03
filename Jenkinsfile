pipeline {
   agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat "mvn clean install"
            }
        }
     stage('Package'){
      steps {
         sh "docker build -t helloworld ."
         sh "docker images"
         sh "docker run helloworld"
       }
    }         
}
}
