@echo off
setlocal enabledelayedexpansion

rem Define the directory path
set "desktop_path=%cd%"

rem Loop through all files in the directory
for %%f in ("%desktop_path%\*.*") do (
    rem Extract file extension
    set "ext=%%~xf"
    rem Determine folder name based on extension
    set "folder="
    if "!ext!"==".txt" set "folder=Documents"
    if "!ext!"==".docx" set "folder=Documents"
    if "!ext!"==".pdf" set "folder=PDFs"
    if "!ext!"==".doc" set "folder=Documents"
    if "!ext!"==".rtf" set "folder=Documents"
    if "!ext!"==".odt" set "folder=Documents"
    if "!ext!"==".jpg" set "folder=Images"
    if "!ext!"==".jpeg" set "folder=Images"
    if "!ext!"==".png" set "folder=Images"
    if "!ext!"==".gif" set "folder=Images"
    if "!ext!"==".bmp" set "folder=Images"
    if "!ext!"==".tiff" set "folder=Images"
    if "!ext!"==".ico" set "folder=Images"
    if "!ext!"==".svg" set "folder=Images"
    if "!ext!"==".psd" set "folder=Images"
    if "!ext!"==".ai" set "folder=Images"
    if "!ext!"==".mp4" set "folder=Videos"
    if "!ext!"==".avi" set "folder=Videos"
    if "!ext!"==".mov" set "folder=Videos"
    if "!ext!"==".wmv" set "folder=Videos"
    if "!ext!"==".mkv" set "folder=Videos"
    if "!ext!"==".flv" set "folder=Videos"
    if "!ext!"==".m4v" set "folder=Videos"
    if "!ext!"==".webm" set "folder=Videos"
    if "!ext!"==".3gp" set "folder=Videos"
    if "!ext!"==".mpg" set "folder=Videos"
    if "!ext!"==".mpeg" set "folder=Videos"
    if "!ext!"==".ts" set "folder=Videos"
    if "!ext!"==".vob" set "folder=Videos"
    if "!ext!"==".xls" set "folder=Spreadsheets"
    if "!ext!"==".xlsx" set "folder=Spreadsheets"
    if "!ext!"==".csv" set "folder=Data"
    if "!ext!"==".exe" set "folder=Executables"
    if "!ext!"==".bat" set "folder=Executables"
    if "!ext!"==".sh" set "folder=Executables"
    if "!ext!"==".jar" set "folder=Executables"
    if "!ext!"==".vcf" set "folder=Contacts"
    if "!ext!"==".ppt" set "folder=Presentations"
    if "!ext!"==".pptx" set "folder=Presentations"
    if "!ext!"==".key" set "folder=Presentations"
    if "!ext!"==".odp" set "folder=Presentations"
    if "!ext!"==".mp3" set "folder=Audio"
    if "!ext!"==".wav" set "folder=Audio"
    if "!ext!"==".aac" set "folder=Audio"
    if "!ext!"==".ogg" set "folder=Audio"
    if "!ext!"==".flac" set "folder=Audio"
    if "!ext!"==".zip" set "folder=Archives"
    if "!ext!"==".rar" set "folder=Archives"
    if "!ext!"==".7z" set "folder=Archives"
    if "!ext!"==".tar" set "folder=Archives"
    if "!ext!"==".gz" set "folder=Archives"

    rem If a folder name was determined, move the file
    if not "!folder!"=="" (
        if not exist "%desktop_path%\!folder!" mkdir "%desktop_path%\!folder!"
        move "%%f" "%desktop_path%\!folder!\%%~nxf"
    )
)

echo Desktop cleaned!
endlocal
