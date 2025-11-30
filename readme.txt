best file structure

/_coreapi_
/yourproject/main.c

work on your project and use 

windows
compile.bat

linux:::
Make or ./compile.sh

things to prepare first
make the script executable
	chmod +x compile.sh


then run it, passing the root folder of your project
	./compile.sh


---
I tried to set this up so you could just drop it in to VSCode

Open folder, and it should work from there, USE CTRL+SHIFT+B to launch compile.bat

if doing this on Linux, change the json file in the .vscode folder


USING MSYS - PATH to your compiler is required

export PATH="/C/ST/STM32CubeIDE_1.6.0/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.9-2020-q2-update.win32_1.5.0.202011040924/tools/bin:$PATH"

Note, your STM32 Compiler might be different so make sure your compiler/bin is in the path

navigate to your project root
	eg. cd /W/Work/Programming/SidboxApplets/Sturdust

simply type make, be sure to have make installed in MSYS (or linux)

	pacman -Syu		(may need to close and reopen shell)
	packman -S make

once installed

checks:
	- be sure to be in project root directory
	- make clean
	- make

you may need to rename applet.bin to applet.app

.