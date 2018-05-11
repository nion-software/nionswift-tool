REM Download NionSwiftLauncher-Windows.zip and unzip to directory NionSwiftLauncher-Windows

move NionSwiftLauncher-Windows %SCRIPTS%\NionSwift
if errorlevel 1 exit 1

move %SCRIPTS%\NionSwift\NionSwiftLauncher.exe %SCRIPTS%\NionSwift\NionSwift.exe
if errorlevel 1 exit 1

%PYTHON% -m pip install --no-deps --ignore-installed .
if errorlevel 1 exit 1
