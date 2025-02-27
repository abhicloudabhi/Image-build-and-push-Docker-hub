# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the application's JAR file to the container
COPY app.jar /app/app.jar

# Expose the port that your application runs on (optional, depending on your app configuration)
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "/app/app.jar"]
