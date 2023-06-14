FROM openjdk:17-alpine
WORKDIR /
COPY target/*.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]