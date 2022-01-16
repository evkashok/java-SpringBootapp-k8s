#Get base image having openjdk version 8
FROM openjdk:8u131-jre
VOLUME /f/dockerimages/
#my first commit
MAINTAINER Chenna Vemula <cvemula.unix@gmail.com>
RUN mkdir /my_springboot
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar /f/dockersave/
WORKDIR /f/dockersave/
#Expose ports
EXPOSE 8080

ENV JAVA_VER=1.8.0


CMD ["java","-jar","/spring-boot-web-0.0.1-SNAPSHOT.jar"]
