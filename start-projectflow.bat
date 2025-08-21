@echo off
title ProjectFlow - Project Management Platform
echo.
echo ========================================
echo   ProjectFlow - Project Management
echo ========================================
echo.
echo Starting ProjectFlow server...
echo Open your browser to: http://localhost:3000
echo.
echo Press Ctrl+C to stop the server
echo.

REM Check if serve is installed
where serve >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Installing serve globally...
    npm install -g serve
)

REM Start the server
serve out -p 3000

pause
