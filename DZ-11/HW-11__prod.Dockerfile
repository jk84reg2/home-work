# HW-11__prod.Dockerfile - image container for prod app
# ubuntu18.04_prod_boxfuse-app

FROM ubuntu:18.04

RUN apt update
RUN apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt install -y default-jdk tomcat9
ADD hello-1.0.war /var/lib/tomcat9/webapps/
RUN chmod +x /var/lib/tomcat9/webapps/hello-1.0.war

EXPOSE 8080