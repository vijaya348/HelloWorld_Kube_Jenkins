FROM java:8
ENV PATH c/Users
WORKDIR $PATH
EXPOSE 8080
ADD /target/gs-maven-0.1.0.war gs-maven-0.1.0.war
ENTRYPOINT ["java","-war","gs-maven-0.1.0.war"]
