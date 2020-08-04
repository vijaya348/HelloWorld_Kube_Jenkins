FROM java:8
mkdir example
cd example
ENV PATH ${PWD}
WORKDIR ${PWD}
COPY /target/gs-maven-0.1.0.jar gs-maven-0.1.0.jar
ENTRYPOINT ["java","-jar","gs-maven-0.1.0.jar"]
EXPOSE 8080
