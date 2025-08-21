#!/bin/bash

echo "========================================"
echo "  ProjectFlow - Build and Package"
echo "========================================"
echo ""

echo "Step 1: Building production version..."
npm run build

if [ $? -ne 0 ]; then
    echo ""
    echo "❌ Build failed! Please check for errors above."
    exit 1
fi

echo ""
echo "✅ Build completed successfully!"
echo ""

echo "Step 2: Creating portable package..."

# Create portable package directory
rm -rf "ProjectFlow-Portable"
mkdir "ProjectFlow-Portable"

# Copy necessary files
cp -r "out" "ProjectFlow-Portable/"
cp "start-projectflow.bat" "ProjectFlow-Portable/"
cp "start-projectflow.sh" "ProjectFlow-Portable/"
cp "README-PORTABLE.txt" "ProjectFlow-Portable/"

# Make shell script executable
chmod +x "ProjectFlow-Portable/start-projectflow.sh"

echo ""
echo "✅ Portable package created in 'ProjectFlow-Portable' folder"
echo ""
echo "📦 Ready for transfer! The folder contains:"
echo "   - out/ (the complete application)"
echo "   - start-projectflow.bat (Windows startup)"
echo "   - start-projectflow.sh (Mac/Linux startup)"
echo "   - README-PORTABLE.txt (instructions)"
echo ""
echo "🚀 To use on another computer:"
echo "   1. Copy the 'ProjectFlow-Portable' folder"
echo "   2. Install Node.js on target computer"
echo "   3. Run: npm install -g serve"
echo "   4. Run the appropriate startup script"
echo ""

read -p "Press Enter to continue..."
