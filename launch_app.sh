#!/bin/bash

# Agentic AI Loan Approval System - One-Click Launcher
# This script launches both FastAPI and Streamlit services

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║   Agentic AI Intelligent Loan Approval System                  ║"
echo "║   Starting Application...                                      ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Navigate to the project directory
cd "$SCRIPT_DIR"

echo "📍 Working Directory: $SCRIPT_DIR"
echo ""

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is not installed"
    exit 1
fi

echo "🚀 Starting FastAPI Service (Port 8000)..."
python3 fastapi_service.py &
FASTAPI_PID=$!

# Wait for FastAPI to start
sleep 3

# Check if FastAPI is running
if ! kill -0 $FASTAPI_PID 2>/dev/null; then
    echo "❌ Error: FastAPI failed to start"
    exit 1
fi

echo "✅ FastAPI is running (PID: $FASTAPI_PID)"
echo ""

echo "🚀 Starting Streamlit UI (Port 8501)..."
echo "🌐 Opening browser in a moment..."
echo ""

# Start Streamlit
streamlit run streamlit_app.py

# Cleanup on exit
trap "kill $FASTAPI_PID" EXIT
