FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/spring-boot-backend.war spring-boot-backend.war
ENTRYPOINT ["java","-war","/spring-boot-backend.jar"]
