FROM anapsix/alpine-java 
COPY /target/gs-maven-0.1.0.jar /home/gs-maven-0.1.0.jar 
CMD ["java","-jar","/home/gs-maven-0.1.0.jar"]
