@'
# N-Body Simulation Project

## Overview
C++ implementation of gravitational N-Body simulation with benchmarking.

## Files
- `nbody.cpp` - Main simulation code
- `vector3d.cpp` - 3D vector helper class
- `solar.tsv` - Solar system initial conditions
- `plot.py` - Visualization script
- `compile_and_run.bat` - Windows compilation script

## How to Run
1. Compile: `g++ -Wall -O2 -std=c++11 nbody.cpp -o nbody.exe`
2. Run tests:
   - Solar system: `nbody.exe solar 200 5000000 1000`
   - 100 particles: `nbody.exe random 100 1 10000 100`
   - 1000 particles: `nbody.exe random 1000 1 10000 100`

## Benchmark Results
[Include your timing results here]

## Author
Your Name
Your Student ID
Course: [Course Name]
'@ | Out-File -FilePath README.md -Encoding UTF8