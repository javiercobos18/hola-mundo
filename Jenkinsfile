pipeline {
               agent any
                                                                                             
                              environment {
                              APP_NAME = sh (returnStdout: true, script: 'grep -im1 "<artifactId>" pom.xml | awk -F\'[><]\' \'{print $3}\' | tr -d "\n"')
                              APP_VERSION = sh (returnStdout: true, script: 'grep -im1 "<version>" pom.xml | awk -F\'[><]\' \'{print $3}\' | tr -d "\n"')
                              WORKSPACE = "${WORKSPACE}"              
                              }
               
    stages {
        
        stage('Build') {
            steps {
                sh ('mvn clean install')
		    // echo "sonnar engine is ${scannerHome}"
		    echo " ${WORKSPACE}"
		    
                                                           echo 'Build..'
		    
            }
        }
	         
        stage('Deploy') {
		agent {docker{ image 'maven:latest'}}	
            steps {
                sh ("docker build .")
		    
		    echo 'Deploying....'
            }
        }
    }
}
