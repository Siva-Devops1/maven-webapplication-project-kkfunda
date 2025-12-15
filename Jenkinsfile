//qa Jenkins pipeline
pipeline 
{
    agent any
    tools
    {
        maven "maven-3.9.6"
        }

    stages {
                stage('git checkout')
                {
                  steps
                  {
                    notifyBuild('STARTED')
                    git branch: 'dev', url: 'https://github.com/Siva-Devops1/maven-webapplication-project-kkfunda.git'
                  }  
                }
                stage('compile')
                {
                steps
                    {
                        sh "mvn compile"
                    }
                    
                    }   
                    stage('Build')
                        {
                        steps
                            {
                                sh "mvn clean package"
                            }
                        }
                    /* stage('SQ Report')
                        {
                        steps
                            {
                            sh "mvn sonar:sonar"
                            }
                        } */
                    stage('Deploy into Nexus')
                    {
                        steps
                            {
                               sh "mvn clean deploy"
                            } 
                    }

                    stage('Deploy to Tomcat')
                    {
                        steps
                            {
                                sh """

      curl -u admin:password \
--upload-file /var/lib/jenkins/workspace/Declarative_pipeline/target/maven-web-application.war \
"http://http://15.207.117.100:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
                            }
                    }
                   stage('dev to qa')
                    {
                        steps
                            {
                               build job: 'testing_UAT'  //this is downstream job for uat
                            } 
                    } 
                }//stages ending
	post {
  success {

    script
    {
     notifyBuild(currentBuild.result)
    }
    
  }
  failure {

  script
  {
    notifyBuild(currentBuild.result)

  }
   
  }
}
                

}   //pipeline ending
        
def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#278EF5'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary, channel: '#up-n-downstream-jobs')
  
}
