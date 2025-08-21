@echo off
title ProjectFlow - Build and Package for Transfer
echo.
echo ========================================
echo   ProjectFlow - Build and Package
echo ========================================
echo.

echo Step 1: Building production version...
call npm run build

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ❌ Build failed! Please check for errors above.
    pause
    exit /b 1
)

echo.
echo ✅ Build completed successfully!
echo.

echo Step 2: Creating portable package...

REM Create portable package directory
if exist "ProjectFlow-Portable" rmdir /s /q "ProjectFlow-Portable"
mkdir "ProjectFlow-Portable"

REM Copy necessary files
xcopy "out" "ProjectFlow-Portable\out" /E /I /Q
copy "start-projectflow.bat" "ProjectFlow-Portable\"
copy "start-projectflow.sh" "ProjectFlow-Portable\"
copy "README-PORTABLE.txt" "ProjectFlow-Portable\"

echo.
echo ✅ Portable package created in 'ProjectFlow-Portable' folder
echo.
echo 📦 Ready for transfer! The folder contains:
echo    - out/ (the complete application)
echo    - start-projectflow.bat (Windows startup)
echo    - start-projectflow.sh (Mac/Linux startup)
echo    - README-PORTABLE.txt (instructions)
echo.
echo 🚀 To use on another computer:
echo    1. Copy the 'ProjectFlow-Portable' folder
echo    2. Install Node.js on target computer
echo    3. Run: npm install -g serve
echo    4. Double-click the startup script
echo.

pause
