

pipeline {

  agent any

  stages {
    stage('Build') {
      steps {
        script {
                 
          def sout = new StringBuilder(), serr = new StringBuilder()
          def proc = '/bin/bash wrapper.sh'.execute()
          proc.consumeProcessOutput(sout, serr)
          proc.waitForOrKill(1000)
          println "out> $sout\nerr> $serr"
          
          
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
