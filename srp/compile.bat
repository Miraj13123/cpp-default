@echo off
setlocal enabledelayedexpansion

:: Step 1: Compile all .cpp files in src/ and lib/ directly to app.exe
set "cpp_files="
for /r src %%f in (*.cpp) do set "cpp_files=!cpp_files! "%%f""
for /r lib %%f in (*.cpp) do set "cpp_files=!cpp_files! "%%f""
clang++ -std=c++17 %cpp_files% -I./lib -o app.exe

endlocal