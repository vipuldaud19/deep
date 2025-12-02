# ---- 1. Build Stage ----
FROM eclipse-temurin:23-jdk AS build

WORKDIR /app

# Copy pom.xml first to leverage Docker cache
COPY pom.xml .

# Install Maven (if you don't have mvnw)
RUN apt-get update && apt-get install -y maven

# Download dependencies offline
RUN mvn dependency:go-offline

# Copy full source code
COPY src src

# Build the JAR file
RUN mvn clean package -DskipTests

# ---- 2. Runtime Stage ----
FROM eclipse-temurin:23-jre

WORKDIR /app

# Copy the JAR from build stage (adjust name if needed)
COPY --from=build /app/target/*.jar app.jar

# Expose port
ENV PORT=8080
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
