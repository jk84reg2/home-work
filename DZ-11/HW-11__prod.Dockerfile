# HW-11__prod.Dockerfile - image container for prod app
# ubuntu20.04_prod_boxfuse-app

FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y default-jdk tomcat9
ADD /boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8080