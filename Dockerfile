# Use a base image with Java and set the working directory
FROM openjdk:17

WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/springboot-nginx-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port your Spring Boot app is running on
EXPOSE 8080

# Define any environment variables for MySQL connection
#ENV MYSQL_HOST=localhost
#ENV MYSQL_PORT=3306
#ENV MYSQL_DATABASE=${MYSQL_DATABASE}
#ENV MYSQL_USER=${MYSQL_USER}
#ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]