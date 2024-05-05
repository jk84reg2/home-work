#  Dockerfile для сборки Java-приложения boxfuse

FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ./boxfuse-sample-java-war-hello && mvn package && mkdir /root/artifact && cp ./target/hello-1.0.war /root/artifact