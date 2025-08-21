#!/bin/bash

# ProjectFlow - Project Management Platform Startup Script

echo "========================================"
echo "  ProjectFlow - Project Management"
echo "========================================"
echo ""
echo "Starting ProjectFlow server..."
echo "Open your browser to: http://localhost:3000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Check if serve is installed
if ! command -v serve &> /dev/null; then
    echo "Installing serve globally..."
    npm install -g serve
fi

# Start the server
serve out -p 3000
