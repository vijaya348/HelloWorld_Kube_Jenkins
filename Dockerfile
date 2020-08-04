FROM java:8
ENV PATH c/Users
WORKDIR $PATH
EXPOSE 8080
ADD /target/gs-maven-0.1.0.jar gs-maven-0.1.0.jar
ENTRYPOINT ["java","-jar","gs-maven-0.1.0.jar"]
