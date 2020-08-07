pipeline {
   
   environment {
    registry = "jyotisma/repo1"
    registryCredential = 'dockerhub_id1'
   }
   
    agent any 
    stages {         
        stage ('Build and Test') { 
                  steps { 
                   bat "mvn clean install"
                   }
        }
               stage ('Docker Image Build')
               {
                  steps
                  {
                      script 
                     { 
                   dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                   bat "docker images"
                   bat "docker run helloworld"
                }
            } 

        }
        stage('Docker Image Push to Repo') { 
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
                       dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                        dockerImage.pull()
                       bat "minikube start"
                       bat "kubectl create -f deployment.yaml"
                       bat "kubectl get pods"
                       echo "Deployment success"
                       
               }
            }
                      
    }
   
}

}
}
