@echo off

rem -------------------------------------------------------------
rem  Build package for chocolatey.
rem -------------------------------------------------------------

@SetLocal EnableExtensions EnableDelayedExpansion

rem  Get package name.
cd ..\
for %%a in (".") do set CURRENT_DIR_NAME=%%~na
cd ./src

echo ===== Test (install form local source) "%CURRENT_DIR_NAME%" package ====

set "PACKAGE_NANE=%CURRENT_DIR_NAME%"
set "SRC_DIR=%~dp0"
set "BUILD_DIR=..\build\%PACKAGE_NANE%"

cd %BUILD_DIR%

call choco install -fdvy %PACKAGE_NANE% --source %CD%

if not "%1" == "1" (
    pause
)

@endlocal
