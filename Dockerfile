# FROM docker.io/library/openjdk:8-jdk-alpine
FROM ubi8/openjdk-8
USER 0
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app.jar
RUN chmod 755 /app.jar
USER 185
ENTRYPOINT ["java","-jar","/app.jar"]
