# Use an official Tomcat image as the base image
FROM tomcat:9.0-jdk11

# Maintain the container metadata
LABEL maintainer="lalbabubsc@gmail.com"

# Copy the WAR file to the Tomcat webapps directory
COPY target/mywebapp.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
