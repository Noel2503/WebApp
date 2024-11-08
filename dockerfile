# Use a base image with JDK installed
FROM openjdk:11-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the compiled WAR file from your local machine to the container
COPY target/webapp-1.0-SNAPSHOT.jar /app/webapp.jar

# Expose the port that Tomcat or your server will run on
EXPOSE 8082

# Run the WAR file using the JDK
CMD ["java", "-jar", "webapp.jar"]
