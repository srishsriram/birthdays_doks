#!/bin/bash
set -e

# Print the current working directory for debugging
echo "Current working directory: $(pwd)"

# Check if requirements.txt exists
if [[ -f "requirements.txt" ]]; then
  echo "Found requirements.txt in $(pwd)"
else
  echo "Error: requirements.txt not found in $(pwd)"
  exit 1
fi

# Create a virtual environment
virtualenv --without-pip virtualenv

# Install dependencies from requirements.txt
pip install -r requirements.txt --target virtualenv/lib/python3.9/site-packages
