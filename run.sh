#!/bin/bash

# This script automates the process of fetching Flutter project dependencies
# and generating code using build_runner. It performs the following tasks:
#
# 1. Runs `flutter pub get` to fetch all the dependencies defined in the
#    `pubspec.yaml` file.
# 2. Runs `build_runner` to generate necessary files such as `.g.dart` files
#    for JSON serialization or Freezed models.
# 3. Notifies the user when all tasks are completed successfully.

# 🚀 Fetch project dependencies
# This command runs `flutter pub get` to fetch all the dependencies
# defined in the `pubspec.yaml` file. It ensures that the project
# has all the required packages installed.
echo "🚀 Running flutter pub get..."
 flutter pub get

# 🔍 Analyze the project
# This command runs `flutter analyze` to perform static code analysis.
# It checks the code for potential issues, ensuring code quality and correctness.
# This step is optional but recommended to catch any potential problems early.
echo "🔍 Running flutter analyze..."
 flutter analyze


# 🔨 Generate code using build_runner
# This command runs `build_runner` to generate necessary files
# such as `.g.dart` files for JSON serialization or Freezed models.
# The `--delete-conflicting-outputs` flag ensures that any conflicting
# files are deleted before generating new ones.
echo "🔨 Running build_runner..."
 flutter pub run build_runner watch --delete-conflicting-outputs

# ✅ Notify the user that all tasks are completed
# This message indicates that both dependency fetching and code generation
# have been successfully completed.
echo "✅ All tasks completed successfully!"
