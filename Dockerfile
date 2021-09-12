FROM centos:7
LABEL org.opencontainers.image.authors="tom83615@gmail.com"

RUN yum install -y wget

RUN cd /

ADD jdk-8u152-linux-x64.tar.gz /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-8/v8.5.70/bin/apache-tomcat-8.5.70.tar.gz
RUN tar zxvf apache-tomcat-8.5.70.tar.gz

ENV JAVA_HOME=/jdk1.8.0_152
ENV PATH=$PATH:/jdk1.8.0_152/bin
CMD ["/apache-tomcat-8.5.70/bin/catalina.sh", "run"]