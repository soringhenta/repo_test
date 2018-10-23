node {
checkoutscm
def customImage = docker.build("my-image:${env.BUILD_ID}")
}
customImage.inside {
echo "Building: ${env.BUILD_ID}"
}
