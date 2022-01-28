def autoCancelled = false

try {
  stage('checkout') {
    x = 10
    if (1) {
      autoCancelled = true
      return
    }
  }
  if (autoCancelled) {
    error('Aborting the build to prevent a loop.')
    // return would be also possible but you have to be sure to quit all stages and wrapper properly
    // return
  }
} catch (e) {
  if (autoCancelled) {
    currentBuild.result = 'ABORTED'
    echo('Skipping mail notification')
    // return here instead of throwing error to keep the build "green"
    return
  }
  // normal error handling
  throw e
}
