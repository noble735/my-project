FROM eclipse-temurin:8-jre-alpine

EXPOSE 8080

COPY  --from=build /home/gradle/src/build/libs/*.jar /app/demo-app.jar
WORKDIR /home/gradle/src

ENTRYPOINT ["java", "-jar", "/app/demo-app.jar"]

