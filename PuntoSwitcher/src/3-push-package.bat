@echo off

rem -------------------------------------------------------------
rem  Build package for chocolatey.
rem -------------------------------------------------------------

@SetLocal EnableExtensions EnableDelayedExpansion

rem  Get package name.
cd ..\
for %%a in (".") do set CURRENT_DIR_NAME=%%~na
cd ./src

echo ===== Push "%CURRENT_DIR_NAME%" package ====

set "PACKAGE_NANE=%CURRENT_DIR_NAME%"
set "SRC_DIR=%~dp0"
set "BUILD_DIR=..\build\%PACKAGE_NANE%"

cd %BUILD_DIR%
for %%A in ("%cd%\*.nupkg") do (call choco push -y %%A --source https://push.chocolatey.org/)
if not "%1" == "1" (
    pause
)

@endlocal
