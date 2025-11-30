@echo off
echo BEGIN COMPILING APPLET FOR SIDBOX!! (YEY!!)
setlocal EnableDelayedExpansion
rem COMPILER BATCH FILE (Windows only for now)

REM ------------------------------------------

rem cd /d %1
del /Q /F compiled\*
mkdir compiled >nul 2>&1


REM CHANGE THIS TO SUIT YOUR NEEDS
set optimise_core=-Ofast
set optimise_app=-Ofast

set FieldOptions=-mcpu=cortex-m7 -mthumb -mfpu="fpv5-d16" -std=gnu99 -c -ffunction-sections -fdata-sections -Wall -fstack-usage --specs="nano.specs" -mfloat-abi="hard" 
set FieldLinker=-mcpu=cortex-m7 --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group

rem FOR THE CORE FILES FIRST
for %%f in (..\..\_coreapi_\*.c) do (
	echo Compiling %%f
	start /B arm-none-eabi-gcc -w %FieldOptions% %optimise_core% -c %%f -o compiled\%%~nf.o
)

rem Wait for all background processes to finish
:waitloop
timeout /t 1 >nul
tasklist | find /i "arm-none-eabi-gcc.exe" >nul
if not errorlevel 1 goto waitloop

rem PROJECT FILES (simplest to keep all in the same directory sadly)
for /R project %%f in (*.c) do (
	echo Compiling %%f
	start /B arm-none-eabi-gcc -w %FieldOptions% %optimise_app% -c %%f -o compiled\%%~nf.o
)

rem Wait for all background processes to finish
:waitloop2
timeout /t 1 >nul
tasklist | find /i "arm-none-eabi-gcc.exe" >nul
if not errorlevel 1 goto waitloop2

IF NOT EXIST "compiled\main.o" (
	echo.
	echo.
	echo NO MAIN.O
	echo ********** Compile ABORTED! **********
	EXIT /B 1
)

arm-none-eabi-gcc %FieldLinker% -T applet.ld -Wl,-Map=compiled/output.map compiled\*.o -o compiled/applet.elf


IF NOT EXIST "compiled\applet.elf" (
	echo.
	echo.
	echo NO Applet.elf
	echo ********** Compile ABORTED! **********
	EXIT /B 1
)

arm-none-eabi-objcopy -O binary compiled/applet.elf applet.app
arm-none-eabi-objdump -d compiled/applet.elf > applet.asm
echo.
echo.

arm-none-eabi-size compiled/applet.elf
echo.
echo.

arm-none-eabi-nm -n compiled/applet.elf | findstr applet_entry
arm-none-eabi-nm -n compiled/applet.elf | findstr main
echo.
echo.
echo ---- COMPILE COMPLETED ----
echo.




setlocal EnableDelayedExpansion

:: Set the file to check
set "FILE=applet.app"

:: Check existence
if not exist "%FILE%" (
    echo File not found: %FILE%
    exit /b 1
)

:: Get file size in bytes
for %%I in ("%FILE%") do set "SIZE=%%~zI"

:: Format the size with commas
call :AddCommas "%SIZE%"
echo Size of %FILE% is %formatted% bytes
exit /b

:: Function: AddCommas
:AddCommas
setlocal EnableDelayedExpansion
set "n=%~1"
set "formatted="

:: Remove leading zeros to prevent octal issues
for /f "tokens=* delims=0" %%A in ("%n%") do set "n=%%A"
if not defined n set n=0

set "len=0"
:strlen
set "char=!n:~%len%,1!"
if defined char (
    set /a len+=1
    goto strlen
)

set /a firstgroup=len %% 3
if !firstgroup! EQU 0 set /a firstgroup=3

set "formatted=!n:~0,%firstgroup%!"
set /a i=firstgroup

:commaLoop
if !i! GEQ !len! goto done
set "formatted=!formatted!,!n:~%i%,3!"
set /a i+=3
goto commaLoop

:done
endlocal & set "formatted=%formatted%"


rem copy /Y /B applet.app "D:\cs\screenrun\applet.app"
copy /Y /B applet.app "D:\c\list"