# Docker Image - Create HTML Static Site
FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /opt/tomcat

ADD https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz /opt/tomcat/
WORKDIR /opt/tomcat/
RUN tar xvfz apache-tomcat-8.5.47.tar.gz

#ADD https://bitbucket.org/soni-labs/docker-statichtmlsite/raw/8fd3553ba9365e8fd3a2bddda16692e9e6e73d1b/helloWorld.war /opt/tomcat/apache-tomcat-8.5.47/webapps
#ADD https://bitbucket.org/soni-labs/docker-statichtmlsite/raw/328f8eeb56076a25fd551f0e3f3cd9d3ccc54ecd/Sample.war /opt/tomcat/apache-tomcat-8.5.47/webapps

#ADD https://github.com/sonyvimal/Sample-HTML/blob/master/htmlSite.war?raw=true /opt/tomcat/apache-tomcat-8.5.47/webapps
ADD https://github.com/bhaski153/static-website/blob/master/htmlSite-2.war?raw=true /opt/tomcat/apache-tomcat-8.5.47/webapps
EXPOSE 8080
CMD /opt/tomcat/apache-tomcat-8.5.47/bin/catalina.sh run
