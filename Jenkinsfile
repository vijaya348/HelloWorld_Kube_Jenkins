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
         step{
        def dockerHome = tool 'docker'
      }
      step
      {
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
   }
    }         
    }
}




