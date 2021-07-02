pipeline {
    agent any
    stages {     
        stage('Build') {
                       agent {docker
				{ image 'maven:latest'}
			}
            steps {
                sh ('mvn clean install')
		    // echo "sonnar engine is ${scannerHome}"
		    echo " ${WORKSPACE}"
		        echo 'Build..'
		    
            }
        }
	        
    }
}
