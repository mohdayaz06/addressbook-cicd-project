FROM tomcat:9.0-jdk17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/addressbook.war /usr/local/tomcat/webapps/addressbook.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
