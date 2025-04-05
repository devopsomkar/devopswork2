# Use an official Java runtime as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java file into the container
COPY ad.java .

# Compile the Java program
RUN javac ad.java

# Command to run the compiled Java program
CMD ["java", "ad"]
