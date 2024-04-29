# ДЗ - урок №6
# Упаковать Java приложение в Docker- контейнер. Процесс сборки производить также в контейнере.

FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 git -y

RUN git clone https://github.com/kliakos/sparkjava-war-example.git
RUN cd ./sparkjava-war-example/ && mvn package && cp ./target/sparkjava-hello-world-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8080