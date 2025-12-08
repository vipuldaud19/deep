# Use OpenJDK 23 base image
FROM eclipse-temurin:23-jdk

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml first
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Copy source code
COPY src ./src

# Make mvnw executable
RUN chmod +x mvnw

# Build the project
RUN ./mvnw clean package -DskipTests

# Expose Spring Boot port
EXPOSE 8080

# Run the JAR (replace with your actual JAR name)
CMD ["java", "-jar", "target/realestate-0.0.1-SNAPSHOT.jar"]
