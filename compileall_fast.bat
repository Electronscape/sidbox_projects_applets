@echo off
setlocal enabledelayedexpansion

echo Scanning directories for compile.bat files...

set ROOTDIR=%cd%
set LOGDIR=%ROOTDIR%\build_logs
set MERGEDLOG=%ROOTDIR%\build_output.txt

if exist "%LOGDIR%" rd /s /q "%LOGDIR%"
mkdir "%LOGDIR%"
if exist "%MERGEDLOG%" del "%MERGEDLOG%"

set INDEX=0

REM Scan for compile.bat files
for /r %%D in (.) do (
    if exist "%%D\compile.bat" (
        set /a INDEX+=1
        set "DIR!INDEX!=%%D"
        echo Found: %%D
    )
)

echo Launching !INDEX! builds in parallel...

REM Launch each compile.bat in background
for /L %%I in (1,1,!INDEX!) do (
    set "DIRCALL=!DIR%%I!"
    start "" /B cmd /c "pushd !DIRCALL! && call compile.bat > "%LOGDIR%\build_%%I.txt" 2>&1 && popd"
)

echo Waiting for background builds to complete...
REM crude wait – give builds time to finish
timeout /t 10 >nul

REM Merge logs
echo --- Build Summary --- > "%MERGEDLOG%"
for %%F in ("%LOGDIR%\*.txt") do (
    echo. >> "%MERGEDLOG%"
    echo [%%~nF] >> "%MERGEDLOG%"
    type "%%F" >> "%MERGEDLOG%"
)

echo.
echo All compile.bat scripts completed!
echo Logs stored in: %LOGDIR%
echo Merged output: %MERGEDLOG%
pause
