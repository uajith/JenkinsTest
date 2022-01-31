
pipeline {

  agent any

  stages {
    stage('Build') {
      steps {
        catchError {
          sh '/bin/bash which python'
          sh '/bin/bash which python3'
          sh '/bin/bash wrapper.sh'
          sh 'ls -lart'
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
