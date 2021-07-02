pipeline {
    agent none
	  environment {
                              APP_NAME = sh (returnStdout: true, script: 'grep -im1 "<artifactId>" pom.xml | awk -F\'[><]\' \'{print $3}\' | tr -d "\n"')
                              APP_VERSION = sh (returnStdout: true, script: 'grep -im1 "<version>" pom.xml | awk -F\'[><]\' \'{print $3}\' | tr -d "\n"')
                              WORKSPACE = "${WORKSPACE}"              
                              }
    stages {     
        stage('Build') {
         agent { docker 'maven:3.8.1-adoptopenjdk-11' }		                                                                             
                    agent {docker{ image 'maven:latest'}}
            steps {
                sh ('mvn clean install')
		    // echo "sonnar engine is ${scannerHome}"
		   // echo " ${WORKSPACE}"
		        echo 'Build..'
		    
            }
        }
	         
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
