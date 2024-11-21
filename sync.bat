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

REM Check if remote origin exists, if not, set it
git remote get-url origin >> nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    git remote add origin https://github.com/harshakalluri1403/Tableau-Dashboards.git >> sync_log.txt 2>&1
)

REM Check for changes and add all files and directories
git add -A >> sync_log.txt 2>&1

REM Commit changes
git commit -m "Auto-sync on %date% %time%" >> sync_log.txt 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Commit failed, possibly no changes to commit. >> sync_log.txt 2>&1
) else (
    REM Check if there are unstaged changes
    git diff-index --quiet HEAD -- || (
        REM If there are unstaged changes, commit or stash them
        echo Unstaged changes found, committing changes before pull. >> sync_log.txt 2>&1
        git commit -am "Auto-sync on %date% %time%" >> sync_log.txt 2>&1
    )
    
    REM Pull the latest changes from the remote to avoid conflicts
    git pull origin main --rebase >> sync_log.txt 2>&1
    if %ERRORLEVEL% NEQ 0 (
        echo Git pull failed, there might be conflicts or other issues. >> sync_log.txt 2>&1
    ) else (
        REM Push to the main branch
        git push -u origin main >> sync_log.txt 2>&1
    )
)

REM Log end time
echo Sync completed on %date% %time% >> sync_log.txt 2>&1

endlocal
