############################################################
# Dockerfile to run docker inside a docker container
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:latest

MAINTAINER praveenksarathi

ENV http_proxy ""
ENV https_proxy ""

RUN apt-get remove docker docker-engine docker.io

RUN apt-get update && apt-get install \ 
apt-transport-https \
ca-certificates \
curl \
software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

RUN apt-key fingerprint 0EBFCD88

RUN sudo apt-get install docker-ce

CMD docker pull imagename:tag

CMD docker run imagename:tag
