@echo off
echo Starting Family Calendar server...
echo.
echo Open this on your iPad:  http://192.168.1.168:8080
echo.
echo Press Ctrl+C to stop.
echo.
cd /d "%~dp0"
npx http-server . -p 8080 -c-1
