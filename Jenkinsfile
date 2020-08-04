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
         
         bat "docker run --publish=7474:7474 --volume=/c/Users/User/hello:/hello helloworld"
         
       }
    }         
}
}
