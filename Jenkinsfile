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
         bat "docker build -t helloworld ."
         bat "docker images"
         bat "docker run --publish=8081:8081 --volume=/c/Users/ helloworld"
       }
    }         
}
}
