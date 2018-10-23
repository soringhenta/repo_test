node {
checkout scm
def customImage = docker.build("alpine_from_jenkins:${env.BUILD_ID}")

customImage.inside {
echo "Building: ${env.BUILD_ID}"
}
}
