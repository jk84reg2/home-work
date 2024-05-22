# HW-11__prod.Dockerfile - container for app
# ubuntu20.04_prod_boxfuse-app

FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y default-jdk tomcat9

EXPOSE 8080