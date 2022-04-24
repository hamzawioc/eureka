pipeline {
    agent any
    
    environment{
        REPOSITORY_URL = 'https://github.com/hamzawioc/eureka.git'
    }
    
    tools {
      maven 'maven-3.8.5'
      jdk 'jdk-u221'
    }

    stages {
        stage('SCM checkout') {
            steps {
                // Get some code from a GitHub repository 
                git "${REPOSITORY_URL}"
            }
        }
        
         stage('compile package') {
            steps {
                // Get some code from a GitHub repository
                withMaven(globalMavenSettingsConfig: 'a33df6a6-d049-446c-96b6-fc5f20ee113a', jdk: 'jdk-u221', maven: 'maven-3.8.5', mavenSettingsConfig: '12e40195-3d4e-4b98-8bf4-3e4ba8d03721') {
                    	execute "mvn clean package"
                }
            }
        }
    }
    
    post{
        always{
            echo 'finished...'
        }
    }
}

// No need to change

def execute(cmd)

{

    if (isUnix())

    {

        sh cmd

    }

    else

    {

        bat cmd

    }

}
