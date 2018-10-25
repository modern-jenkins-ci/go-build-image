node('docker') {
    stage('Get Latest Code') {
        cleanWs()
        checkout scm
    }

    stage('Build Docker Image') {
        docker.build("modern-jenkins/go-builder:${env.BUILD_NUMBER}")
    }
}