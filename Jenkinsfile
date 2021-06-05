pipeline {
  agent { label "master" }
  stages {
    def buildedImage
    stage("Build") {
      steps {
        buildedImage = docker.build("demo:${env.BUILD_ID}")
      }
    }
  }
}