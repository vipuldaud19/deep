# Use Tomcat base image with Java 17
FROM tomcat:10.1.14-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Set working directory
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR built by Maven
COPY target/realestate.war ./ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
