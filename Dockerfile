FROM openjdk:8-jdk-alpine
#ENV http_proxy http://C0257243:*******@dia2.santanderuk.gs.corp:80
#ENV https_proxy https://C0257243:*******@dia2.santanderuk.gs.corp:80
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
