#!/bin/bash

# Book Template Build Script
# This script builds the book in various formats using the book-builder Docker image

set -e  # Exit on error

# Parse command line arguments
SKIP_PDF=false
SKIP_EPUB=false
SKIP_MOBI=false
SKIP_HTML=false
LANGUAGE="en"

for arg in "$@"
do
  case $arg in
    --skip-pdf) SKIP_PDF=true ;;
    --skip-epub) SKIP_EPUB=true ;;
    --skip-mobi) SKIP_MOBI=true ;;
    --skip-html) SKIP_HTML=true ;;
    --lang=*) LANGUAGE="${arg#*=}" ;;
  esac
done

echo "📚 Building book..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
  echo "❌ Error: Docker is not installed. Please install Docker first."
  exit 1
fi

# Build arguments based on skip flags
BUILD_ARGS=""
if [ "$SKIP_PDF" = true ]; then BUILD_ARGS="$BUILD_ARGS --skip-pdf"; fi
if [ "$SKIP_EPUB" = true ]; then BUILD_ARGS="$BUILD_ARGS --skip-epub"; fi
if [ "$SKIP_MOBI" = true ]; then BUILD_ARGS="$BUILD_ARGS --skip-mobi"; fi
if [ "$SKIP_HTML" = true ]; then BUILD_ARGS="$BUILD_ARGS --skip-html"; fi
BUILD_ARGS="$BUILD_ARGS --lang=$LANGUAGE"

# Run the book-builder container
echo "🔄 Running book-builder with: $BUILD_ARGS"
docker run --rm -v "$(pwd):/book" iksnae/book-builder:latest $BUILD_ARGS

echo "✅ Book build complete! Output files are in the build/ directory."