@echo off
setlocal
if "%~1"=="" (
  echo Usage: publish-github-pages.cmd https://github.com/YOUR-USER/YOUR-REPO.git
  exit /b 1
)
set REMOTE_URL=%~1
cd /d "%~dp0"
if not exist .git git init
for /f "delims=" %%i in ('git branch --show-current 2^>nul') do set CURRENT_BRANCH=%%i
if "%CURRENT_BRANCH%"=="" git checkout -b main
if not "%CURRENT_BRANCH%"=="main" git checkout -B main
if exist .git\config git remote remove origin 2>nul
git remote add origin "%REMOTE_URL%"
git add .
git commit -m "Publish custom extension repo" 2>nul
if errorlevel 1 echo Nothing new to commit.
git push -u origin main
endlocal
