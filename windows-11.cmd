@echo off
chcp 65001 >nul
title Windows 11 Recovery Manager V10

:MENU
cls
echo ==========================================
echo Windows 11 Recovery Manager V10
echo ==========================================
echo.
echo 1. English (United States)
echo 2. German (Germany)
echo 3. German (India) - LOCALE
echo 4. French (France)
echo 5. Spanish (Spain)
echo 6. Italian (Italy)
echo 7. Portuguese (Portugal)
echo 8. Polish (Poland)
echo 9. Croatian (Croatia)
echo 10. Japanese (Japan)
echo 11. Korean (Korea)
echo 12. Chinese (Simplified)
echo 13. Chinese (Traditional)
echo 14. Show installed languages
echo 0. Exit
echo.

set /p choice=Select language: 

if "%choice%"=="1" goto en
if "%choice%"=="2" goto de
if "%choice%"=="3" goto dein
if "%choice%"=="4" goto fr
if "%choice%"=="5" goto es
if "%choice%"=="6" goto it
if "%choice%"=="7" goto pt
if "%choice%"=="8" goto pl
if "%choice%"=="9" goto hr
if "%choice%"=="10" goto ja
if "%choice%"=="11" goto ko
if "%choice%"=="12" goto zh
if "%choice%"=="13" goto zhtw
if "%choice%"=="14" goto list
if "%choice%"=="0" exit /b

goto MENU

:en
set "LANG=en-US"
goto APPLY

:de
set "LANG=de-DE"
goto APPLY

:dein
set "LANG=de-IN"
goto APPLY

:fr
set "LANG=fr-FR"
goto APPLY

:es
set "LANG=es-ES"
goto APPLY

:it
set "LANG=it-IT"
goto APPLY

:pt
set "LANG=pt-PT"
goto APPLY

:pl
set "LANG=pl-PL"
goto APPLY

:hr
set "LANG=hr-HR"
goto APPLY

:ja
set "LANG=ja-JP"
goto APPLY

:ko
set "LANG=ko-KR"
goto APPLY

:zh
set "LANG=zh-CN"
goto APPLY

:zhtw
set "LANG=zh-TW"
goto APPLY

:APPLY
echo.
echo Selected locale: %LANG%
echo.
echo A compatible Windows 11 language pack is required.
echo.
pause
goto MENU

:list
cls
echo ==========================================
echo Installed Windows Languages
echo ==========================================
echo.
dism /online /get-intl
echo.
pause
goto MENU