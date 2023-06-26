FROM maven:3.6.3-jdk-8
WORKDIR /PipelineProject
COPY pom.xml /PipelineProject
RUN mvn dependency:go-offline
COPY src /PipelineProject/src
RUN mvn package
CMD ["java", "-jar", "target/PipelineProject-0.0.1-SNAPSHOT.jar"]
