@echo off
echo Starting Sweet Shop Management System...
echo.

REM Check if .env exists in backend
if not exist "backend\.env" (
    echo Creating .env file from env.example...
    copy "backend\env.example" "backend\.env"
    echo .env file created!
)

REM Start Backend Server
echo Starting Backend Server (Port 5000)...
start "Backend Server" cmd /k "cd backend && npm run dev"

REM Wait a bit for backend to start
timeout /t 3 /nobreak >nul

REM Start Frontend Server
echo Starting Frontend Server (Port 3000)...
start "Frontend Server" cmd /k "cd frontend && npm run dev"

echo.
echo ========================================
echo Servers are starting!
echo Backend:  http://localhost:5000
echo Frontend: http://localhost:3000
echo ========================================
echo.
echo Open your browser and navigate to: http://localhost:3000
echo.
pause

