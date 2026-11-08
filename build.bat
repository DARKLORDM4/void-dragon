@echo off
rem Builds void_dragon-V1.0.jar from the src folder (Windows 10 or newer)
cd /d "%~dp0src"
if exist "..\void_dragon-V1.0.jar" del "..\void_dragon-V1.0.jar"
tar -a -cf "..\void_dragon-V1.0.zip" assets data META-INF fabric.mod.json quilt.mod.json pack.mcmeta pack.png LICENSE.txt
move /y "..\void_dragon-V1.0.zip" "..\void_dragon-V1.0.jar" >nul
echo Built void_dragon-V1.0.jar
pause
