#!/bin/bash
# Run DARP using the shared Python 3.12 virtual environment
# Usage: ./run.sh [options]
# Examples:
#   ./run.sh                          # default run (10x10 grid, 3 robots, no visualization)
#   ./run.sh -vis                     # run with Pygame visualization
#   ./run.sh -vis -grid 20 20         # larger grid with visualization
#   ./run.sh -vis -nep -obs_pos 10 11 12 21 22 23 33 34 35 -in_pos 0 99 32 -portions 0.7 0.2 0.1  # demo

VENV_PYTHON="/Users/siddheshabhang/Desktop/Robotics/DARP-Semester-Project/venv/bin/python3"

if [ ! -f "$VENV_PYTHON" ]; then
    echo "Error: Virtual environment not found at $VENV_PYTHON"
    echo "Please ensure DARP-Semester-Project/venv exists."
    exit 1
fi

cd "$(dirname "$0")"
"$VENV_PYTHON" multiRobotPathPlanner.py "$@"
