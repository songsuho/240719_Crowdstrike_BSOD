:: Use in windows safe-mode

@echo off
setlocal enabledelayedexpansion

:: Set Crowdstrike directory
set "target_dir=C:\Windows\System32\drivers\CrowdStrike"

:: Move to crowdstrike driver directory
cd /d "%target_dir%"

:: Delete the target patch files
for %%F in (C-00000291*) do (
    echo Deleting file: %%F
    del "%%F"
)

echo File deletion complete
pause
