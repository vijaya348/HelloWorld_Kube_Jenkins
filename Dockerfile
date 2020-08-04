FROM java:8
RUN mkdir example
RUN cd example
ENV PATH ${PWD}
WORKDIR ${PWD}
COPY /target/gs-maven-0.1.0.jar gs-maven-0.1.0.jar
ENTRYPOINT ["java","-jar","gs-maven-0.1.0.jar"]
EXPOSE 8080
