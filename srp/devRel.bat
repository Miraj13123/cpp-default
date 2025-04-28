@echo off
setlocal enabledelayedexpansion

:: Step 0: Clear all object and exe files in bin/
del /q bin\*.o bin\*.exe

:: Step 1: Create bin/ if it doesn't exist
if not exist bin mkdir bin

:: Step 2: Compile all .cpp files in src/ and lib/ to .o files in bin/
for /r src %%f in (*.cpp) do (
    clang++ -std=c++17 -c "%%f" -I./lib -o "bin\%%~nf.o"
)
for /r lib %%f in (*.cpp) do (
    clang++ -std=c++17 -c "%%f" -I./lib -o "bin\%%~nf.o"
)

:: Step 3: Link all .o files in bin/ into app.exe and run it
set "obj_files="
for /r bin %%f in (*.o) do set "obj_files=!obj_files! "%%f""
clang++ %obj_files% -o bin\app.exe && bin\app.exe

endlocal