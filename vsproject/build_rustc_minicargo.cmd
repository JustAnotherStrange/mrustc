@echo off
x64\Release\minicargo.exe ..\rustc-1.19.0-src\src\libstd --script-overrides ..\script-overrides\stable-1.19.0
if %errorlevel% neq 0 exit /b %errorlevel%
x64\Release\minicargo.exe ..\rustc-1.19.0-src\src\libpanic_unwind --script-overrides ..\script-overrides\stable-1.19.0
if %errorlevel% neq 0 exit /b %errorlevel%
x64\Release\minicargo.exe ..\rustc-1.19.0-src\src\libtest --script-overrides ..\script-overrides\stable-1.19.0
if %errorlevel% neq 0 exit /b %errorlevel%

x64\Release\mrustc.exe ..\rustc-1.19.0-src\src\test\run-pass\hello.rs -L output -o hello.exe
if %errorlevel% neq 0 exit /b %errorlevel%
hello.exe
if %errorlevel% neq 0 exit /b %errorlevel%