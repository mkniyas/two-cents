FROM eclipse-temurin:21-jre-alpine

LABEL maintainer="PatientPoint"
LABEL description="Spring Boot microservice for PatientPoint platform."
LABEL name="poc-service"

# Create app user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set working directory
WORKDIR /app

# Copy entrypoint script
COPY docker-entrypoint.sh /app/
RUN chmod +x /app/docker-entrypoint.sh

# Copy JAR file
COPY build/libs/*.jar app.jar

# Change ownership
RUN chown -R appuser:appgroup /app

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:8080/actuator/health || exit 1

# Run entrypoint script
ENTRYPOINT ["/app/docker-entrypoint.sh"]

