@echo off

REM Установка кодовой страницы для корректного отображения кириллицы
chcp 65001 >nul

set DESIGNER="C:\Program Files\1cv8\8.3.25.1374\bin\1cv8.exe"
set DB=C:\Games\1C\EmptyDb
set EPF=C:\Games\1C\Projects\UpdateDolgi\bin\DolgiAlign.epf
set OUT=C:\Games\1C\Projects\UpdateDolgi\src

echo Cleaning old source...
if exist "%OUT%" rmdir /s /q "%OUT%"

echo Unpacking EPF...

%DESIGNER% DESIGNER /F "%DB%" /DumpExternalDataProcessorOrReportToFiles "%OUT%" "%EPF%" /Out log.txt /DisableStartupDialogs

type log.txt