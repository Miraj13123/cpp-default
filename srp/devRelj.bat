@echo off
setlocal enabledelayedexpansion

:: Step 0: Clear all object and exe files in bin/
del /q bin\*.o bin\*.exe

:: Step 1: Create bin/ if it doesn't exist
if not exist bin mkdir bin

:: Step 2: Compile all .cpp files in the project to .o files in bin/ with relative path
for /r . %%f in (*.cpp) do (
    set "rel_path=%%~dpf"
    set "rel_path=!rel_path:%CD%\=!"
    if not exist "bin\!rel_path!" mkdir "bin\!rel_path!"
    clang++ -std=c++17 -c "%%f" -I./lib -o "bin\!rel_path!%%~nf.o"
)

:: Step 3: Link all .o files in bin/ into app.exe and run it
set "obj_files="
for /r bin %%f in (*.o) do set "obj_files=!obj_files! "%%f""
clang++ %obj_files% -o bin\app.exe && bin\app.exe

endlocal