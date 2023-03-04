FROM harikrushn96/tomcat9
RUN rm -rf /opt/tomcat/webapps/*
COPY target/01-maven-web-app.war /opt/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh","run"]
