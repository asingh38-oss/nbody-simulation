@echo off
echo ================================
echo N-Body Simulation - Student Edition
echo ================================
echo.

:menu
echo What do you want to do?
echo 1. Compile the program
echo 2. Run solar system test
echo 3. Run 100 particles test
echo 4. Run 1000 particles test
echo 5. Run ALL tests (for grading)
echo 6. Clean up files
echo 7. Exit
echo.

set /p choice="Enter number (1-7): "

if "%choice%"=="1" goto compile
if "%choice%"=="2" goto test1
if "%choice%"=="3" goto test2
if "%choice%"=="4" goto test3
if "%choice%"=="5" goto alltests
if "%choice%"=="6" goto clean
if "%choice%"=="7" goto end
goto menu

:compile
echo Compiling... (this might take a moment)
g++ -std=c++11 nbody.cpp -o nbody.exe
if exist nbody.exe (
    echo SUCCESS! Program compiled.
) else (
    echo ERROR: Compilation failed!
)
pause
goto menu

:test1
echo.
echo ===== TEST 1: Solar System =====
echo Running with dt=200 for 5,000,000 steps...
echo This will take a minute...
echo.
if not exist nbody.exe call :compile
nbody.exe solar 200 5000000 1000 > test1_output.txt
echo Done! Check solar_simulation.tsv for results.
echo.
pause
goto menu

:test2
echo.
echo ===== TEST 2: 100 Particles =====
echo Running with dt=1 for 10,000 steps...
echo.
if not exist nbody.exe call :compile
nbody.exe random 100 1 10000 100 > test2_output.txt
echo Done! Check random_simulation.tsv for results.
echo.
pause
goto menu

:test3
echo.
echo ===== TEST 3: 1000 Particles =====
echo Running with dt=1 for 10,000 steps...
echo.
if not exist nbody.exe call :compile
nbody.exe random 1000 1 10000 100 > test3_output.txt
echo Done! Check random_simulation.tsv for results.
echo.
pause
goto menu

:alltests
echo.
echo ===== RUNNING ALL TESTS FOR GRADING =====
echo This will take a few minutes...
echo.
call :test1
call :test2
call :test3
echo.
echo ===== ALL TESTS COMPLETE! =====
echo Submit these files:
echo 1. nbody.cpp
echo 2. vector3d.h
echo 3. solar.tsv
echo 4. plot.py
echo 5. solar_simulation.tsv
echo 6. random_simulation.tsv
echo.
pause
goto menu

:clean
echo Cleaning up...
del nbody.exe 2>nul
del *.tsv 2>nul
del *.txt 2>nul
echo All clean!
pause
goto menu

:end
echo Goodbye!
pause