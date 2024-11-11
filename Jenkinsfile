node {
	def app
	stage('Clone repository') {
		git 'https://github.com/galim03/fork_vs_vfork.git'
	}
	stage('Build image') {
		app = docker.build("eungga/test")
	}
	stage('Test image') {
		app.inside {
			sh 'make test'
		}
	}
	stage('Push image') {
		docker.withRegistry('https://registry.hub.docker.com', 'eungga') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
}
