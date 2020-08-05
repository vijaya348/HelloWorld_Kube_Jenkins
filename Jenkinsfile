pipeline {
   
   environment {
    registry = "jyotisma/repo1"
    registryCredential = 'dockerhub_id1'
   }
   
    agent any 
stages { 
        
        stage('Building and Package the image') { 
            steps { 

               script { 
                   bat "mvn clean package"
                   dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                   bat "docker images"
                   bat "docker run helloworld"
                }
            } 

        }
        stage('Push the image to Docker Hub') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
                      
    }
   
    stage('Deployment in Dev') { 
            steps { 
               script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.pull()
               bat "kubectl get node"
                bat "kubectl create -f deployment.yaml"
                 bat "kubectl get deployments"
                 bat "kubectl get services"
                             }
               }
            }
                      
    }
   
}

}

