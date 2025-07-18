@echo off
setlocal EnableDelayedExpansion

:: Start ngrok with static domain in background
start /b "" ngrok http --url=elegant-grizzly-wholly.ngrok-free.app 80

:: Wait briefly to ensure ngrok API is available
timeout /t 5 /nobreak >nul

:: Fetch ngrok URL using PowerShell
for /f "delims=" %%i in ('powershell -Command "(Invoke-RestMethod -Uri http://localhost:4040/api/tunnels).tunnels | Where-Object { $_.proto -eq 'https' } | Select-Object -ExpandProperty public_url"') do set "NGROK_URL=%%i"

:: Check if URL was fetched
if "%NGROK_URL%"=="" (
    echo Error: Could not fetch ngrok URL. Ensure ngrok is running and elegant-grizzly-wholly.ngrok-free.app is valid.
    taskkill /im ngrok.exe /f >nul 2>&1
    pause
    exit /b 1
)

endlocal