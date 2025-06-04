@echo off
title Cleaning Temp Files...
color 0A

echo =============================
echo  Cleaning Temporary Files...
echo =============================

echo Deleting user temp files...
:: *.* means all files with any name and any extension
del /s /q "%temp%\*.*"
rd /s /q "%temp%"

echo Deleting system temp files...
del /s /q "C:\Windows\Temp\*.*"
rd /s /q "C:\Windows\Temp"

echo Emptying Recycle Bin...
PowerShell.exe -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"

echo.
echo Checking available disk space...
PowerShell.exe -Command "Get-PSDrive -PSProvider 'FileSystem' | Select-Object Name,Free,Used,@{Name='Total';Expression={($_.Free + $_.Used)}}"

echo.
echo *Temp files cleaned successfully!*
pause
exit
