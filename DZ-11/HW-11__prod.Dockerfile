# HW-11__prod.Dockerfile - image container for prod app
# ubuntu18.04_prod_boxfuse-app

FROM ubuntu:18.04

RUN apt update
RUN apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt install -y wget default-jdk
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz \
    && tar -xzvf apache-tomcat-9.0.89.tar.gz \
    && mv apache-tomcat-9.0.89 /opt/tomcat \
    && rm apache-tomcat-9.0.89.tar.gz \
    && chmod +x /opt/tomcat/bin/*.sh
ADD hello-1.0.war /opt/tomcat/webapps
RUN chmod +x /opt/tomcat/webapps/hello-1.0.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]