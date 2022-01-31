pipeline {

  agent any

  stages {
    stage('Build') {
      steps {
        script {
          SONARSCAN_STATUS = sh (
                               script: '/bin/bash wrapper.sh',
                               returnStdout: true
                              ).trim()
          echo "Scan Status: ${SONARSCAN_STATUS}"
          if ( ${SONARSCAN_STATUS} == 'SUCCESS' ){
              echo "SOMETHING  GOOD"
          } else {
              echo "SOMETHING BAD"    
          }
        }
      }
      post {
        success {
          echo 'Build stage successful'
        }
        failure {
          echo 'Compile stage failed'
          error('Build is aborted due to failure of build stage')

        }
      }
    }
    stage('Production') {
      steps {
        sh 'pwd'
      }
    }
  }
}
