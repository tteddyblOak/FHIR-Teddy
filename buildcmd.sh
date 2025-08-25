#!/bin/bash

# Set JAVA_HOME to JDK 21
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH

echo "Using JAVA_HOME=$JAVA_HOME"

# Verify Java installation
if [ -z "$JAVA_HOME" ]; then
    echo "Error: JDK 21 not found. Please install JDK 21."
    exit 1
fi

# Show Java version
java -version

echo "Checking internet connection..."
ping -c 1 google.com > /dev/null && echo "Online" || echo "Offline"

# Set the path to the FHIR-Teddy directory
FHIR_TEDDY_DIR="/Users/thabangteddy/Desktop/FHIR/FHIR-Teddy"

# Check if the directory exists
if [ ! -d "$FHIR_TEDDY_DIR" ]; then
    echo "Error: FHIR-Teddy directory not found at: $FHIR_TEDDY_DIR"
    exit 1
fi

# Change to the FHIR-Teddy directory
cd "$FHIR_TEDDY_DIR"
echo "Changed to directory: $(pwd)"

# Check if _genonce.sh exists and is executable
if [ ! -f "_genonce.sh" ]; then
    echo "Error: _genonce.sh not found in: $FHIR_TEDDY_DIR"
    exit 1
fi

if [ ! -x "_genonce.sh" ]; then
    echo "Making _genonce.sh executable..."
    chmod +x "_genonce.sh"
fi

echo "Running _genonce.sh..."
./_genonce.sh