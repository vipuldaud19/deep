# Use Java 17
FROM eclipse-temurin:17-jdk AS build

# Set working directory
WORKDIR /app

# Copy Maven wrapper + pom.xml
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Make wrapper executable
RUN chmod +x mvnw

# Copy source
COPY src ./src

# Build
RUN ./mvnw clean package -DskipTests

# Runtime Image
FROM eclipse-temurin:17-jre
WORKDIR /app

# Copy jar
COPY --from=build /app/target/realestate-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
