node('docker') {
    stage('Get Latest Code') {
        cleanWs()
        checkout scm
    }

    stage('Build Docker Image') {
        docker.build("modern-jenkins/go-builder:${env.BUILD_NUMBER}")
        docker.build("modern-jenkins/go-builder:latest")
        docker.build("modern-jenkins/go-builder:1.11-alpine")
    }
}