@echo off
call "%~dp01c-env.bat"

echo Starting 1C...

"%DESIGNER%" ENTERPRISE /F "%DB%" %AUTH% /Execute "%EPF%"
