::
:: Copy Mission Files from dynmic to static
::

ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0
:: log file to output build results
SET log=%parent%logs\%me%.log
:: temporary folder for dynamic source
SET destination_path=%parent%static\
ECHO Static file temporary output path:    %destination_path%

:: path to dynamic files to be concatenated
SET source_path=%parent%dynamic\
ECHO Dynamic file source path:   %source_path%
SET source_path_core=%parent%dynamic\core\
ECHO Core file source path:   %source_path_core%

ECHO.

:: Initialise build file & log
ECHO STATIC FILE COPY STARTED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% > %log%
ECHO. >> %log%

ECHO.

:: Copy dynamic files
copy %source_path%mist_4_5_107_custom.lua %destination_path%mist_4_5_107_custom.lua
copy %source_path%pretense_compiled.lua %destination_path%pretense_compiled.lua
copy %source_path%init.lua %destination_path%init.lua
copy %source_path%playerlogistics.lua %destination_path%playerlogistics.lua

ECHO.

:: Close log
ECHO. >> %log%
ECHO STATIC FILE COPY FINISHED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% >> %log%
ECHO Copy complete.

PAUSE
EXIT /B %ERRORLEVEL%