FROM eclipse-temurin:17-jre-alpine

COPY target/app.jar app.jar

CMD ["java", "-jar", "app.jar"]