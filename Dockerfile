FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY target/spring-boot-backend.war spring-boot-backend.war
ENTRYPOINT ["java","-jar","/spring-boot-backend.war"]
