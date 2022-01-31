

pipeline {

  agent any

  stages {
    stage('Build') {
      steps {
        script {
                 
         sh "/bin/bash wrapper.sh > commandResult"
         result = readFile('commandResult').trim()
          
          
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
