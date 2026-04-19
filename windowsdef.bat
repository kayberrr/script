@echo off

REM === Trusted folder ===
set SAFE=%USERPROFILE%\Runner

REM === If already running from SAFE, skip copy ===
if /I "%cd%"=="%SAFE%" goto RUN

REM === Otherwise: prepare and relaunch ===
if not exist "%SAFE%" mkdir "%SAFE%"

copy "%~f0" "%SAFE%\app.bat" /Y

cd /d "%SAFE%"
call app.bat
exit

:RUN
REM ===============================
REM === YOUR ORIGINAL CODE HERE ===
REM ===============================

echo Running from safe folder...

REM example:
REM powershell -ExecutionPolicy Bypass -Command "your command"
