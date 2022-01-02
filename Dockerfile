#Get base image having openjdk version 8
FROM openjdk:8u131-jre
#my first commit
MAINTAINER Chenna Vemula <cvemula.unix@gmail.com>
RUN mkdir /my_springboot
ADD target/spring-boot-web-0.0.1-SNAPSHOT.jar /my_springboot
WORKDIR /my_springboot
#Expose ports
EXPOSE 8081

ENV JAVA_VER=1.8.0


CMD ["java","-jar","/spring-boot-web-0.0.1-SNAPSHOT.jar"]
