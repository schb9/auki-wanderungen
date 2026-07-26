@echo off
cd /d "%~dp0"
echo Tiroler Wanderkarte 2009-2026 wird gestartet...
echo Dieses Fenster offen lassen, solange die Karte verwendet wird.
where py >nul 2>nul
if %errorlevel%==0 (
 start "" "http://localhost:8765/wanderkarte.html"
 py -m http.server 8765 --bind 127.0.0.1
 goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
 start "" "http://localhost:8765/wanderkarte.html"
 python -m http.server 8765 --bind 127.0.0.1
 goto :eof
)
echo Python wurde nicht gefunden.
pause
