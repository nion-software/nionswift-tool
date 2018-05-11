#!/bin/bash

# debugging lines
# echo "RUNNING"
# echo $PREFIX
# pwd
# ls -R

mkdir -p "$PREFIX/bin"

if [ -e NionSwiftLauncher-Mac.zip ]
then
    unzip NionSwiftLauncher-Mac.zip -d "$PREFIX/bin"
fi

if [ -e NionSwiftLauncher-Linux.zip ]
then
    unzip NionSwiftLauncher-Linux.zip -d "$PREFIX/bin/NionSwift"
fi

python -m pip install --no-deps --ignore-installed .
