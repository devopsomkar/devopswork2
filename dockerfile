# Use an official Java runtime as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java file into the container
COPY HelloWorld.java .

# Compile the Java program
RUN javac HelloWorld.java

# Command to run the compiled Java program
CMD ["java", "HelloWorld"]
