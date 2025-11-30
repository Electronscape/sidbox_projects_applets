@echo off
echo Scanning directories for compile.bat files...

REM Save the current directory
set ROOTDIR=%cd%

REM Use FOR /R to recursively scan for compile.bat
for /r %%D in (.) do (
    if exist "%%D\compile.bat" (
        echo.
        echo Found: %%D\compile.bat
        echo Running...
        pushd %%D
        call compile.bat
        popd
    )
)

echo.
echo Done!
pause
