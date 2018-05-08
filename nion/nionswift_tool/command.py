import os
import pkg_resources
import subprocess
import sys

def main():
    if sys.platform == "darwin":
        app_path = pkg_resources.resource_filename("nion.nionswift_tool", "macosx/Nion Swift.app")
        exe_path = os.path.join(app_path, "Contents", "MacOS", "Nion Swift")
    elif sys.platform == "linux":
        app_dir = pkg_resources.resource_filename("nion.nionswift_tool", "linux")
        exe_path = os.path.join(app_dir, "NionSwiftLauncher")
    elif sys.platform == "win32":
        app_dir = pkg_resources.resource_filename("nion.nionswift_tool", "windows")
        exe_path = os.path.join(app_dir, "NionSwiftLauncher.exe")
    else:
        exe_path = None
    if exe_path:
        python_prefix = os.sys.prefix
        proc = subprocess.Popen([exe_path, python_prefix, "nionui_app.nionswift"] + sys.argv[1:], universal_newlines=True)
        proc.communicate()
