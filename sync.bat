@echo off
setlocal

REM Change to your DevPlayground directory
cd C:\Users\harsh\Desktop\Tableau

REM Log start time
echo Starting Git Sync on %date% %time% >> sync_log.txt

REM Create .gitkeep in every empty folder
for /d %%d in (*) do (
    pushd "%%d"
    if not exist "*" (
        echo. > ".gitkeep"
    )
    popd
)

REM Initialize Git (if not already initialized)
git init >> sync_log.txt 2>&1

REM Set remote origin to the new repository
git remote add origin https://github.com/harshakalluri1403/Tableau-Dashboards.git >> sync_log.txt 2>&1 2>nul

REM Check for changes and add all files and directories
git add -A >> sync_log.txt 2>&1

REM Commit changes
git commit -m "Auto-sync on %date% %time%" >> sync_log.txt 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Commit failed, possibly no changes to commit. >> sync_log.txt 2>&1
) else (
    REM Pull the latest changes from the remote to avoid conflicts
    git pull origin main --rebase >> sync_log.txt 2>&1
    REM Push to the main branch
    git push -u origin main >> sync_log.txt 2>&1
)

REM Log end time
echo Sync completed on %date% %time% >> sync_log.txt 2>&1

endlocal
