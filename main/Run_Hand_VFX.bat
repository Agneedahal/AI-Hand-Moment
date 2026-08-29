@echo off
setlocal
cd /d "%~dp0"

where py >nul 2>nul
if errorlevel 1 (
    echo Python launcher was not found.
    echo Install Python 3.12 64-bit, then run this file again.
    pause
    exit /b 1
)

py -3.12 -c "import sys; print(sys.version)" >nul 2>nul
if errorlevel 1 (
    echo Python 3.12 was not found.
    echo Please install Python 3.12 64-bit.
    pause
    exit /b 1
)

echo Installing/checking required packages...
py -3.12 -m pip install --upgrade pip
py -3.12 -m pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo Package installation failed.
    pause
    exit /b 1
)

echo.
echo Starting Hand VFX...
py -3.12 Hand_VFX_Working.py
pause
