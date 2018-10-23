FROM ubuntu:18.04
ARG http_port=8080
ARG agent_port=50000
ARG JENKINS_HOME=/var/jenkins_home
ENV JENKINS_HOME $JENKINS_HOME
ENV JENKINS_SLAVE_AGENT_PORT ${agent_port}
VOLUME $JENKINS_HOME
ARG JENKINS_URL=http://ftp-chi.osuosl.org/pub/jenkins/war/2.147/jenkins.war
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git curl docker.io openjdk-8-jdk
RUN rm -rf /var/lib/apt/lists/* && mkdir -p $JENKINS_HOME && mkdir -p /usr/share/jenkins/
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war 
#COPY jenkins.war /usr/share/jenkins/
EXPOSE ${http_port}
USER root
ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
