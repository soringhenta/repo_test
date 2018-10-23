node {
checkout scm
def customImage = docker.build("sorin_alpine-jenkins:${env.BUILD_ID}")

customImage.inside {
echo "Building: ${env.BUILD_ID}"
}
}
