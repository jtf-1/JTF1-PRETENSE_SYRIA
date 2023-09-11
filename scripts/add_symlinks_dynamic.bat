::
:: Create Symlinks for dynamic loading of library source files
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0

:: location of JTF1-Core\Scripts
SET jtf1corescripts=D:\GitHub\JTF1-Scripts\core
ECHO core path:           %jtf1corescripts%

CD %parent%

:: path to static scripts
SET dynamicscriptpath=%parent%dynamic\
ECHO Dynamic path:           %dynamicscriptpath%

:: Move to folder containing library files
CD %dynamicscriptpath%
ECHO --------------------------------------------------------
ECHO:

:: Create library scripts folder if it doesn't exist
if NOT EXIST %dynamicscriptpath%lib\ md %dynamicscriptpath%lib

:: add folder for pretense saves
if NOT EXIST %dynamicscriptpath%saves\ md %dynamicscriptpath%saves

:: Create symlinks to library files
:: SAVES
MKLINK /j %dynamicscriptpath%saves\server "C:\Users\rober\Saved Games\DCS.openbeta_server\missions\Saves"
MKLINK /j %dynamicscriptpath%saves\client "C:\Users\rober\Saved Games\DCS.openbeta\Missions\Saves"
:: MOOSE
MKLINK /j %dynamicscriptpath%lib\Moose "D:\GitHub\Moose_Framework\Moose Development\Moose"
MKLINK %dynamicscriptpath%lib\Moose.lua "d:\GitHub\MOOSE_INCLUDE\Moose_Include_Static\Moose.lua"
:: MIST
MKLINK %dynamicscriptpath%lib\mist.lua "d:\GitHub\MissionScriptingTools\mist.lua"
:: SKYNET
MKLINK %dynamicscriptpath%lib\skynet-iads-compiled.lua "d:\GitHub\Skynet-IADS\demo-missions\skynet-iads-compiled.lua"
:: MISSIONLIST
MKLINK %dynamicscriptpath%lib\missions.lua "C:\Users\rober\Saved Games\missions\missions.lua"
:: SERVERSETTINGS
MKLINK %dynamicscriptpath%lib\LocalServerSettings.lua "C:\Users\rober\Saved Games\DCS.openbeta\LocalServerSettings.lua"
:: Create symlink to JTF1-Core\Scripts folder
MKLINK /j "%dynamicscriptpath%core" "%jtf1corescripts%"

ECHO:
ECHO --------------------------------------------------------

PAUSE
EXIT /B %ERRORLEVEL%