#!/bin/bash

# Flutter web build script
# This script cleans the project, removes old docs, and builds for web

echo "Starting Flutter web build process..."

# Clean the Flutter project
echo "Cleaning Flutter project..."
flutter clean

# Navigate to docs directory and clean it
echo "Cleaning docs directory..."
cd docs/
rm -f *
cd ../

# Build Flutter web app and output to docs directory
echo "Building Flutter web app..."
flutter build web --output=docs

echo "Build complete! Web app is now available in the docs/ directory." 