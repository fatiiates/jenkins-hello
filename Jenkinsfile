pipeline {
  agent { label "master" }
  stages {
    stage("Build") {
      steps {
        def buildedImage = docker.build("demo:${env.BUILD_ID}")
      }
    }
  }
}