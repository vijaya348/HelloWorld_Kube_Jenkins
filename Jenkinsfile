pipeline {
   agent { dockerfile true }

   environment {
    registry = "jyotisma/repo1"
    registryCredential = 'dockerhub_id'
   }
   
    agent any 
stages { 
        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/YourGithubAccount/YourGithubRepository.git' 
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

}

