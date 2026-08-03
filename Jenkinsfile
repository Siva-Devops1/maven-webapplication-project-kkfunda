node {

    def mavenHome = tool name: 'maven'

    try {
        notifyBuild('STARTED')
        stage('Git Checkout') {
            git branch: 'dev',
                url: 'https://github.com/Siva-Devops1/maven-webapplication-project-kkfunda.git'
        }

        stage('Compile') {
            sh "${mavenHome}/bin/mvn compile"
        }

        stage('Build') {
            sh "${mavenHome}/bin/mvn clean package"
        }

        stage('SonarQube Analysis') {
            sh "${mavenHome}/bin/mvn sonar:sonar"
        }

        stage('Deploy to Nexus') {
            sh "${mavenHome}/bin/mvn clean deploy"
        }

        stage('Deploy to Tomcat') {

            sh """
                curl --fail -u admin:password \
                --upload-file target/maven-web-application.war \
                "http://3.7.248.246:8080/manager/text/deploy?path=/maven-web-application&update=true"
            """
        }

    } catch (Exception e) {

        currentBuild.result = 'FAILED'
        throw e

    } finally {

        notifyBuild(currentBuild.result)

    }
}

def notifyBuild(String buildStatus = 'STARTED') {

    buildStatus = buildStatus ?: 'SUCCESS'

    def color = '#FF0000'

    if (buildStatus == 'STARTED') {
        color = '#FFFF00'
    } else if (buildStatus == 'SUCCESS') {
        color = '#278EF5'
    } else {
        color = '#FF0000'
    }

    def summary = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})"

    slackSend(
        channel: '#jen-kins',
        color: color,
        message: summary
    )
}
