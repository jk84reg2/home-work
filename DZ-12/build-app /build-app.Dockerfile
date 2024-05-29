#  Dockerfile - build java application App42

FROM ubuntu:18.04

RUN apt update && apt install -y openjdk-8-jdk git maven
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git \
        && cd ./App42PaaS-Java-MySQL-Sample \
        && mvn package \
        && mkdir /root/artifact \
        && cp /root/App42PaaS-Java-MySQL-Sample/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /root/artifact