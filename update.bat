@echo off
title FOXCORE Dashboard Update
d:
cd "D:\FOXCORE\music-dashboard"

echo Збір свіжих даних для музичного дашборду...
node dashboard.js

echo.
echo Відправка оновленої аналітики на GitHub...
git add stats.json stats.js index.html update.bat .gitignore
git commit -m "Music dashboard update with client-side password protection"
git push origin main

echo.
echo Все оновлено успішно!
pause