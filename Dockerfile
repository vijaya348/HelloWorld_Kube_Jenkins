FROM java:8
VOLUME c/Users
EXPOSE 8080
ADD /target/gs-maven-0.1.0.jar gs-maven-0.1.0.jar
ENTRYPOINT ["java","-jar","gs-maven-0.1.0.jar"]
