def runCommand = { strList ->
  assert ( strList instanceof String ||
           ( strList instanceof List && strList.each{ it instanceof String } ) \
)
  def proc = strList.execute()
  proc.in.eachLine { line -> println line }
  proc.out.close()
  proc.waitFor()

  print "[INFO] ( "
  if(strList instanceof List) {
    strList.each { print "${it} " }
  } else {
    print strList
  }
  println " )"

  if (proc.exitValue()) {
    println "gave the following error: "
    println "[ERROR] ${proc.getErrorStream()}"
  }
  assert !proc.exitValue()
}


pipeline {

  agent any

  stages {
    stage('Build') {
      steps {
        catchError {
          sh '/bin/bash which python'
          sh '/bin/bash which python3'
          sh '/bin/bash wrapper.sh'
          script{
            runCommand("echo HELLO WORLD") 
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
