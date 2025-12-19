@echo off
echo ========================================
echo Starting E-Commerce Application
echo ========================================
echo.

echo [1/2] Starting Backend Server (Port 3001)...
start "Backend Server" cmd /k "cd server && npm start"
timeout /t 3 /nobreak > nul

echo [2/2] Starting Frontend (Port 3000)...
start "Frontend" cmd /k "npm run dev"

echo.
echo ========================================
echo Both servers are starting...
echo ========================================
echo.
echo Backend:  http://localhost:3001
echo Frontend: http://localhost:3000
echo Admin:    http://localhost:3000/admin
echo.
echo Close this window when you're done.
echo To stop servers, close the Backend and Frontend windows.
echo ========================================
pause
