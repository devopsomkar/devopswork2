# Use a lightweight Java image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine into the container
COPY target/loginapp-1.0-SNAPSHOT.jar app.jar

# Expose the application's port (default for Spring Boot is 8080)
EXPOSE 8080

# Define the command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

