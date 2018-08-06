FROM openjdk:8-jdk-alpine
#ENV http_proxy http://C0****:*******@****.santanderuk.gs.corp:80
#ENV https_proxy https://C0*****:*******@****.santanderuk.gs.corp:80
VOLUME /tmp
EXPOSE 8081
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
