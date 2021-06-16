pipeline {
    agent any

    stages {
		stage('Build') {
			agent {docker{ image 'maven:latest'}}
                                                                                             
                              environment {
                              APP_NAME = sh (returnStdout: true, script: 'grep -im1 "<artifactId>" pom.xml | awk -F\'[><]\' \'{print $3}\' | tr -d "\n"')
                              APP_VERSION = sh (returnStdout: true, script: 'grep -im1 "<version>" pom.xml | awk -F\'[><]\' \'{print $3}\' | tr -d "\n"')
                              WORKSPACE = "${WORKSPACE}"              
                              }
            steps {
			 script{
                   sh ("mvn -version")
               }
		    echo " ${WORKSPACE}"
		    
            echo 'Build..'
		    
            }
        }
    }
}
