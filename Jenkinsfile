pipeline {
  agent { label "master" }
  stages {
    stage("Build") {
      steps {
        sh """
          docker build -t demo .
        """
      }
    }
    stage("Run") {
      steps {
        sh """
          docker run --rm -p 8080:8080 demo:latest
        """
      }
    }
  }
}