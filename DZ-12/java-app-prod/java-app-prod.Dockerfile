#  Dockerfile - deploy  java application App42

FROM ubuntu:18.04

RUN apt update && apt install -y openjdk-8-jdk wget
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz \
    && tar -xzvf apache-tomcat-8.5.100.tar.gz \
    && mv apache-tomcat-8.5.100 /opt/tomcat \
    && rm apache-tomcat-8.5.100.tar.gz \
    && chmod +x /opt/tomcat/bin/*.sh
RUN mkdir /root/artifact \
    && cp /root/artifact/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /opt/tomcat/webapps/ \
    && chmod +x /opt/tomcat/webapps/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war
RUN mkdir /root/app-config && cp /root/app-config/Config.properties /opt/tomcat/webapps/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT/Config.properties
CMD ["/opt/tomcat/bin/catalina.sh", "start"]

EXPOSE 8080