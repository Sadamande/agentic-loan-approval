@echo off
REM Agentic AI Loan Approval System - Windows Launcher
REM This batch file launches both FastAPI and Streamlit services

echo.
echo ════════════════════════════════════════════════════════════════
echo    Agentic AI Intelligent Loan Approval System
echo    Starting Application...
echo ════════════════════════════════════════════════════════════════
echo.

REM Get the directory where this script is located
setlocal enabledelayedexpansion
set "SCRIPT_DIR=%~dp0"

REM Change to project directory
cd /d "%SCRIPT_DIR%"

echo. Working Directory: %SCRIPT_DIR%
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo. Error: Python is not installed or not in PATH
    pause
    exit /b 1
)

echo. 🚀 Starting FastAPI Service (Port 8000)...
start "FastAPI Service" python fastapi_service.py

REM Wait for FastAPI to start
timeout /t 3 /nobreak

echo. ✅ FastAPI is running
echo.

echo. 🚀 Starting Streamlit UI (Port 8501)...
echo. 🌐 Browser will open in a moment...
echo.

REM Start Streamlit
python -m streamlit run streamlit_app.py

pause
