#Get base image having openjdk version 8
FROM openjdk:8u131-jre
VOLUME /tmp/
#my first commit
MAINTAINER Chenna Vemula <cvemula.unix@gmail.com>
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar myapp.jar
#Expose ports
EXPOSE 8080

ENV JAVA_VER=1.8.0


CMD ["java","-jar","/myapp.jar"]
