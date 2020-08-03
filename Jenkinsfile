pipeline {
   agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat "mvn clean install"
            }
        }
        
           
   stage('Initialize'){
      steps{
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
   }
    }         
    }




