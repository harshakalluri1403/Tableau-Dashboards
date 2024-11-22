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

REM Add changes and commit
git add -A >> sync_log.txt 2>&1
git commit -m "Auto-sync on %date% %time%" >> sync_log.txt 2>&1

REM Stash changes before pulling
git stash >> sync_log.txt 2>&1
git pull origin main --rebase >> sync_log.txt 2>&1
git stash pop >> sync_log.txt 2>&1

REM Push changes
git push -u origin main >> sync_log.txt 2>&1

REM Log end time
echo Sync completed on %date% %time% >> sync_log.txt 2>&1

endlocal
