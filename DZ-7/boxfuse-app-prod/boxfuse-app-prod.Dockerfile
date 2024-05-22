#  HW-11__prod.Dockerfile для сборки Java-приложения boxfuse - http://158.160.147.77:8080/hello-1.0/

FROM ubuntu:18.04

RUN apt update
RUN apt upgrade -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN cp /root/artifact/hello-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8080