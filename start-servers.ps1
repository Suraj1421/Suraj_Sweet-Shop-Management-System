# Sweet Shop Management System - Startup Script

Write-Host "Starting Sweet Shop Management System..." -ForegroundColor Cyan
Write-Host ""

# Check if .env exists in backend
$backendEnvPath = "backend\.env"
if (-not (Test-Path $backendEnvPath)) {
    Write-Host "Creating .env file from env.example..." -ForegroundColor Yellow
    Copy-Item "backend\env.example" $backendEnvPath
    Write-Host ".env file created!" -ForegroundColor Green
}

# Start Backend Server
Write-Host "Starting Backend Server (Port 5000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PSScriptRoot\backend'; npm run dev" -WindowStyle Normal

# Wait a bit for backend to start
Start-Sleep -Seconds 3

# Start Frontend Server
Write-Host "Starting Frontend Server (Port 3000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PSScriptRoot\frontend'; npm run dev" -WindowStyle Normal

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "Servers are starting!" -ForegroundColor Green
Write-Host "Backend:  http://localhost:5000" -ForegroundColor Cyan
Write-Host "Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Open your browser and navigate to: http://localhost:3000" -ForegroundColor Yellow
Write-Host "Press any key to exit this window (servers will continue running)..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

