#!/bin/sh

# note: pass the version; but also change it in each of the setup scripts.

version=$1

curl -L -O https://github.com/nion-software/nionswift-launcher/releases/download/$version/NionSwiftLauncher-Mac.zip
curl -L -O https://github.com/nion-software/nionswift-launcher/releases/download/$version/NionSwiftLauncher-Linux.zip
curl -L -O https://github.com/nion-software/nionswift-launcher/releases/download/$version/NionSwiftLauncher-Windows.zip
