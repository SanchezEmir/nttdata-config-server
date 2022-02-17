FROM amazoncorretto:11-alpine-jdk
VOLUME /tmp
EXPOSE 8888
ARG JAR_FILE=target/config-server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} config-server.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh","-c","java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /config-server.jar" ]