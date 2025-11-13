# poc-service

Spring Boot microservice for PatientPoint platform.

## Overview

Spring Boot microservice for PatientPoint platform.

## Tech Stack

- **Java 21** + **Spring Boot 3.5.5**
- **Gradle** for build management
- **OpenAPI** for API documentation

## Quick Start

### Prerequisites

- Java 21+
- Docker (optional, for containerized deployment)

### Run Locally

```bash
./gradlew bootRun
```

The service will start on `http://localhost:8080`

### API Documentation

- **Swagger UI:** `http://localhost:8080/swagger-ui/index.html`
- **OpenAPI Spec:** `http://localhost:8080/v3/api-docs`

## Build

```bash
./gradlew clean build
```

## Test

```bash
./gradlew test
```

## Docker

### Build Docker Image

```bash
docker build -t poc-service:latest .
```

### Run with Docker Compose

```bash
docker-compose up
```

## Development

### Code Formatting

This project uses Spotless for code formatting:

```bash
./gradlew spotlessApply
```

### Code Quality

SonarQube analysis is integrated into the CI/CD pipeline.

## Contributing

1. Create feature branch from `main`
2. Make changes
3. Run tests: `./gradlew test`
4. Format code: `./gradlew spotlessApply`
5. Create PR

## License

Internal PatientPoint project

