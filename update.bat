@echo off
title FOXCORE Dashboard Update
e:
cd "E:\DASHBOARDS\music-dashboard"

echo Збір свіжих даних для музичного дашборду...
node dashboard.js

echo.
echo Відправка оновленої аналітики на GitHub...
git add stats.json stats.js index.html update.bat .gitignore
git commit -m "Update local paths and refresh stats"
git push origin main

echo.
echo Все оновлено успішно!
pause