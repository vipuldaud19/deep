# ---- 1. Build Stage ----
FROM eclipse-temurin:23-jdk AS build

WORKDIR /app

# Copy only pom.xml first
COPY pom.xml .

# Install Maven (since you don't have mvnw)
RUN apt-get update && apt-get install -y maven

# Download dependencies
RUN mvn dependency:go-offline

# Copy full project
COPY src src

# Build the WAR file
RUN mvn clean package -DskipTests

# ---- 2. Runtime Stage ----
FROM eclipse-temurin:23-jre

WORKDIR /app

# Copy WAR from build stage
COPY --from=build /app/target/*.war app.war

# Render sets PORT automatically
ENV PORT=8080

EXPOSE 8080

# Run WAR
ENTRYPOINT ["java", "-jar", "app.war"]
