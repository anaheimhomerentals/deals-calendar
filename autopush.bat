@echo off
cd /d "C:\Users\wkstnlocal\Desktop\deals calendar"

:: Check if there are any modified or untracked files
for /f "tokens=*" %%a in ('git status --porcelain') do set "HAS_CHANGES=1"

if defined HAS_CHANGES (
    git add .
    git commit -m "Automated hourly backup %date% %time%"
    git push origin main
)