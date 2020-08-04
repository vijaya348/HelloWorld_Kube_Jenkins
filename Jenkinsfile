pipeline {
   
   environment {
    registry = "jyotisma/repo1"
    registryCredential = 'dockerhub_id'
   }
   
    agent any 
stages { 
        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/vijaya348/HelloWorld_Docker_Jenkins.git' 
            }
       } 
        stage('Building our image') { 
            steps { 

               script { 

                   dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 

        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
               
    }
}

}

