@echo off
setlocal enabledelayedexpansion

:: Step 0: Clear all object and exe files
del /q src\*.o lib\*.o .\*.exe

:: Step 1: Compile all .cpp files in src/ and lib/ to .o files
for /r src %%f in (*.cpp) do (
    clang++ -std=c++17 -c "%%f" -I./lib -o "%%~dpnf.o"
)
for /r lib %%f in (*.cpp) do (
    clang++ -std=c++17 -c "%%f" -I./lib -o "%%~dpnf.o"
)

:: Step 2: Link all .o files into app executable and run it
set "obj_files="
for /r src %%f in (*.o) do set "obj_files=!obj_files! "%%f""
for /r lib %%f in (*.o) do set "obj_files=!obj_files! "%%f""
clang++ %obj_files% -o app.exe && app.exe

endlocal