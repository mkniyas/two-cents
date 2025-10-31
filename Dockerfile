FROM gradle:8.9-jdk-17 AS build
WORKDIR /workspace
COPY . .
RUN gradle clean bootJar --no-daemon
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /workspace/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
