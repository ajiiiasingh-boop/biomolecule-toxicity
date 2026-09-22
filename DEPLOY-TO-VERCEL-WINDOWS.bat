@echo off
title Deploy to Vercel
cd /d "%~dp0"

echo.
echo   DEPLOY TO VERCEL
echo   ================
echo.
echo   This puts your site on the internet with the API running.
echo   No GitHub needed. It uploads straight from this folder.
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo   Node.js is not installed on this computer.
  echo.
  echo   Download it from https://nodejs.org  ^(pick the LTS button^),
  echo   run the installer, then double-click this file again.
  echo.
  pause
  exit /b 1
)

echo   What happens next:
echo.
echo     1. A browser window opens asking you to log in to Vercel.
echo        Choose "Continue with GitHub" or "Continue with Email".
echo     2. Come back to this window. It will upload and build.
echo     3. It prints your live web address at the end.
echo.
echo   If it asks any questions, press Enter to accept the default.
echo.
pause

echo.
echo   Deploying. This takes two to three minutes...
echo.

call npx --yes vercel@latest --prod --yes

echo.
echo   ============================================================
echo   Look for the line above starting with "Production:".
echo   That web address is your live site.
echo.
echo   Open it and check the top strip says "Live API connected".
echo   ============================================================
echo.
pause
