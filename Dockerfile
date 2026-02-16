FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Копируй собранный JAR из target/
COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
