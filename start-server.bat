@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo   Taqweem - local server
echo   http://localhost:8080/index.html
echo.
echo   Keep this window open while using the app.
echo   Press Ctrl+C to stop.
echo.
start "" http://localhost:8080/index.html
python -m http.server 8080 2>nul
if errorlevel 1 (
  py -m http.server 8080 2>nul
)
if errorlevel 1 (
  npx --yes http-server -p 8080 -c-1
)
pause
