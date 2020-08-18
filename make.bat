@echo off                                                                                                                               
set LSHORT=beamer
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
