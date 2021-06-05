
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package


FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/sample-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8084
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar", "--server.port=8084"]