@echo off
cd /d "C:\Users\wkstnlocal\Desktop\deals calendar"
git add .
git commit -m "Automated hourly backup %date% %time%"
git push origin main