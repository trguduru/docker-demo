FROM alpine

CMD ["echo","Hello, from Docker Image"]
CMD ["date"]
RUN apk --update add openjdk8-jre
RUN apk --update add git
CMD ["git"]
CMD ["export JAVA_HOME=`which java`"]
RUN apk --update add maven
CMD [`which java`]
CMD ["/usr/bin/java", "-version"]
CMD ["java"]
COPY configuration.yml /opt/app/
COPY rest-dropwizard-1.0-SNAPSHOT.jar /opt/app/
WORKDIR /opt/app/

EXPOSE 8080

ENTRYPOINT exec java -jar rest-dropwizard-1.0-SNAPSHOT.jar server configuration.yml
