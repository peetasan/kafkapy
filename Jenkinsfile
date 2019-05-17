pipeline {
  agent {
    docker {
      image 'docker.flcn.io/base/python:3.7-glibc'
    }

  }
  stages {
    stage('') {
      steps {
        sh 'sudo apt update && sudo apt install -y make'
      }
    }
  }
}