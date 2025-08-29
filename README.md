# TempCleaner Batch Script 

<img src="https://img.shields.io/badge/Author-farnaztr-red" />    <img src="https://img.shields.io/badge/Project-TempCleaner-black" />   <img src="https://img.shields.io/github/stars/farnaztr/TempCleaner?style=social" />

This batch script is a simple Windows tool to:
- Delete temporary files from the user and system folders.
- Empty the Recycle Bin.
- Display available disk space using PowerShell.

---

##  How to Run

1. Copy the code into a file and save it as `tempcleaning.bat`.
2. Right-click the file and choose **"Run as administrator"**.
   > Recycle Bin cleanup and system temp folder removal require admin privileges.

---

## Notes
- If `Clear-RecycleBin` fails, make sure:
  - PowerShell is installed and updated.
  - You run the script with admin rights.

