FROM openjdk:8-jdk-alpine
LABEL maintainer="ahmedbaz1024"
WORKDIR /usr/local/bin/
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} config-server.jar
EXPOSE 8888
CMD ["java","-jar","config-server.jar"]
