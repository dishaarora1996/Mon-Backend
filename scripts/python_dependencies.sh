#!/usr/bin/env bash
set -e

# Create virtual environment
echo "Creating virtual environment..."
virtualenv venv

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

echo "Dependencies installed successfully."
