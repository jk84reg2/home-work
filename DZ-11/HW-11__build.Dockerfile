# HW-11__prod.Dockerfile - image container for build docker image and build app and push image into repository
# ubuntu20.04_build_java_template

FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y default-jdk git maven docker.io

EXPOSE 8080