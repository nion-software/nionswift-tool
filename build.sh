#!/bin/sh

# note: pass the version; but also change it in each of the setup scripts.

version=$1

curl -L -O https://github.com/nion-software/nionswift-launcher/releases/download/$version/NionSwiftLauncher-Mac.zip
curl -L -O https://github.com/nion-software/nionswift-launcher/releases/download/$version/NionSwiftLauncher-Linux.zip
curl -L -O https://github.com/nion-software/nionswift-launcher/releases/download/$version/NionSwiftLauncher-Windows.zip

rm -rf dist

rm -rf nion/nionswift_tool/macosx build nionswift_tool.egg-info
mkdir -p nion/nionswift_tool/macosx
unzip NionSwiftLauncher-Mac.zip -d nion/nionswift_tool/macosx
python setup_macos.py bdist_wheel --plat-name macosx-10.11-x86_64
rm -rf nion/nionswift_tool/macosx

rm -rf nion/nionswift_tool/linux build nionswift_tool.egg-info
mkdir -p nion/nionswift_tool/linux
unzip NionSwiftLauncher-Linux.zip -d nion/nionswift_tool/linux
python setup_linux.py bdist_wheel --plat-name linux-x86_64
rm -rf nion/nionswift_tool/linux

rm -rf nion/nionswift_tool/windows build nionswift_tool.egg-info
mkdir -p nion/nionswift_tool/windows
unzip NionSwiftLauncher-Windows.zip -d nion/nionswift_tool/windows
python setup_windows.py bdist_wheel --plat-name win-amd64
rm -rf nion/nionswift_tool/windows

rm -rf NionSwiftLauncher-Mac.zip
rm -rf NionSwiftLauncher-Linux.zip
rm -rf NionSwiftLauncher-Windows.zip
