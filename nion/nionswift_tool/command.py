import os
import subprocess
import sys

def launch(argv):
    if sys.platform == "darwin":
        exe_path = os.path.join(sys.exec_prefix, "bin", "Nion Swift.app", "Contents", "MacOS", "Nion Swift")
    elif sys.platform == "linux":
        exe_path = os.path.join(sys.exec_prefix, "bin", "NionSwiftLauncher", "NionSwiftLauncher")
    elif sys.platform == "win32":
        exe_path = os.path.join(sys.exec_prefix, "Scripts", "NionSwiftLauncher", "NionSwift.exe")
    else:
        exe_path = None
    if exe_path:
        python_prefix = os.sys.prefix
        proc = subprocess.Popen([exe_path, python_prefix, "nionui_app.nionswift"] + argv[1:], universal_newlines=True)
        proc.communicate()

def main():
    launch(sys.argv)
