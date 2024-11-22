@echo off
:: Navigate to the project directory
cd C:\Users\harsh\Desktop\Tableau

:: Create or append to the sync_log.txt file with the current timestamp
echo %date% %time% - Sync started >> sync_log.txt

:: Fetch the latest changes from the remote repository
git fetch origin >> sync_log.txt 2>&1

:: Check the status of the repository
git status >> sync_log.txt 2>&1

:: If there are changes not staged for commit (like modified files)
:: Stage the changes, commit them, and push them to the remote repository
git add -A >> sync_log.txt 2>&1
git commit -m "Auto-commit changes" >> sync_log.txt 2>&1
git push origin main >> sync_log.txt 2>&1

:: Pull the latest changes from the remote main branch to ensure the repo is fully updated
git pull origin main --rebase >> sync_log.txt 2>&1

:: Final status check
git status >> sync_log.txt 2>&1

:: Log completion time
echo %date% %time% - Sync completed >> sync_log.txt
echo ------------------------------------------------------------ >> sync_log.txt
