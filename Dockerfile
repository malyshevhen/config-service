FROM openjdk:17-alpine
ADD target/config-service-*.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
