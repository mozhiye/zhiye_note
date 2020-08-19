@echo off                                                                                                                               
set LSHORT=git
set PDF=%LSHORT%.pdf
set TEMP=%LSHORT%.aux %LSHORT%.log

if "%1"=="clean" goto clean

set TEX=xelatex

%TEX% %LSHORT%
%TEX% %LSHORT%

if exist %PDF% (
start "" "%PDF%"
)

REM %del %TEMP%
