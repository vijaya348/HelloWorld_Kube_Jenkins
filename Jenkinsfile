pipeline {
   agent { dockerfile true }

   environment {
    registry = "jyotisma/repo1"
    registryCredential = 'dockerhub_id'
   }
   
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat "mvn clean install"
            }
        }
     stage('Package'){
      steps {
         bat "docker build -t helloworld ."
         bat "docker images"
         bat "docker run helloworld"
         
         
         
       }
    }         
}
}
