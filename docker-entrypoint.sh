#!/bin/sh

set -e

# Default JVM options
JAVA_OPTS="${JAVA_OPTS:--Xmx512m -Xms256m}"

# Add GC options
JAVA_OPTS="$JAVA_OPTS -XX:+UseG1GC"
JAVA_OPTS="$JAVA_OPTS -XX:MaxGCPauseMillis=200"

# Add other recommended options
JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError"
JAVA_OPTS="$JAVA_OPTS -XX:HeapDumpPath=/tmp/heapdump.hprof"

# Run the application
exec java $JAVA_OPTS -jar app.jar "$@"

