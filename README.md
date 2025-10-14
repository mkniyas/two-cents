# poc-service
Spring Boot microservice for PatientPoint platform.
## Run locally
```bash
./gradlew bootRun
```
## Docker
```bash
docker build -t poc-service:1.0.0 .
docker run -p 8080:8080 poc-service:1.0.0
```
