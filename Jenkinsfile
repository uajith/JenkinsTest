pipeline{
  agent any
  stages {
    stage ("build"){
      steps {
        echo "BUILD in progress"
      }
    }
    stage ("test"){
      steps {
        echo "Test in progress"
        currentBuild.result = 'ABORTED'
      }
    }
    stage ("deploy"){
      steps {
        echo "Deploy in progress"
      }
    }
  }
}
