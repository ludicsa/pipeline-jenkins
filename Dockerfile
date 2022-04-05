FROM jenkins/jenkins:lts-jdk11

USER root

VOLUME [ "home/jenkins_home:/var/jenkins_home" ]

WORKDIR /

RUN apt-get update

EXPOSE 8080

EXPOSE 50000
