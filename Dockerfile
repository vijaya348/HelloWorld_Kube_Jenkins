FROM tomcat:9.0-jre8-alpine
COPY target/gs-maven-0.1.0.jar $CATALINA_HOME/webapps/gs-maven-0.1.0.jar
