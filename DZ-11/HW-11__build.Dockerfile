# HW-11__prod.Dockerfile - image container for build docker image and build app and push image into registry
# ubuntu20.04_build_java

FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt install -y default-jdk git maven docker.io

EXPOSE 8080