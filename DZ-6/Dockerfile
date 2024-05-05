# ДЗ - урок №6
# Упаковать Java приложение в Docker- контейнер. Процесс сборки производить также в контейнере.

FROM ubuntu:18.04

RUN apt update
RUN apt upgrade -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install maven -y
RUN apt install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ./boxfuse-sample-java-war-hello && mvn package && cp ./target/hello-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8079
