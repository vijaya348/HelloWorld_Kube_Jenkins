
pipeline {
   agent {dockerfile true}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat "mvn clean install"
            }
        }
        
                
    }
}
