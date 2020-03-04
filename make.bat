@echo off                                                                                                                               
set LSHORT=zhiye_note
set PDF=%LSHORT%.pdf
set TEMP=%LSHORT%.aux %LSHORT%.log

if "%1"=="clean" goto clean

set TEX=xelatex

%TEX% %LSHORT%
%TEX% %LSHORT%

if exist %PDF% (
start "" "%PDF%"
)

%del %TEMP%
