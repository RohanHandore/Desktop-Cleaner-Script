# Desktop Cleaner Script

## Overview
The Desktop Cleaner Script is a utility for organizing files in a directory into specific folders based on their file extensions. This helps in maintaining a neat and organized directory, whether it's your desktop or any specific folder that needs cleaning. The script is available in three versions: Python, Bash, and Windows CMD file.

## Features
- **Support for Multiple File Types:** Organizes a wide range of file types including documents, images, videos, spreadsheets, presentations, audio files, and more.
- **Automatic Folder Creation:** Automatically creates folders if they don't already exist.
- **Platform-Specific Scripts:** Available for Windows (CMD), Linux, and macOS (Bash), and universally (Python).

## Prerequisites
Before running the scripts, ensure you have the necessary environment set up:
- **Python:** Python must be installed for the Python script. [Download Python](https://www.python.org/downloads/)
- **Bash:** Default on Linux and macOS systems.
- **Windows Command Prompt:** For running CMD scripts on Windows.

## Installation

### Cloning the Repository
To get started with these scripts, clone the repository to your local machine using:
```bash
git clone https://github.com/your-username/desktop-cleaner.git
cd desktop-cleaner
```

### Adding Scripts to PATH (Windows)
To run the CMD script from any directory:
1. Right-click on 'This PC' or 'Computer' on your desktop or in File Explorer.
2. Select 'Properties'.
3. Click on 'Advanced system settings'.
4. In the System Properties window, click on the 'Environment Variables' button.
5. In the Environment Variables window, find the 'Path' variable in the 'System variables' section and click 'Edit'.
6. In the Edit Environment Variable window, click 'New' and add the path to the folder where your `clean.cmd` script is located.
7. Click 'OK' on all dialogs to close them and apply the changes.

## Usage

### Python Script
1. Navigate to the script directory.
2. Run the script using:
   ```bash
   python clean.py
   ```
   This will organize the current directory.

### Bash Script
1. Ensure the script is executable:
   ```bash
   chmod +x clean.sh
   ```
2. Run the script:
   ```bash
   ./clean.sh
   ```
   This executes the script in the current directory.

### CMD Script
1. Run the script in CMD:
   ```cmd
   clean.cmd
   ```
   This will organize files in the current directory on Windows.

## File Extensions Handled
The script categorizes and moves files based on the following extensions:
- **Documents:** `.txt`, `.docx`, `.pdf`, `.doc`, `.rtf`, `.odt`
- **Images:** `.jpg`, `.jpeg`, `.png`, `.gif`, `.bmp`, `.tiff`, `.ico`, `.svg`, `.psd`, `.ai`
- **Videos:** `.mp4`, `.avi`, `.mov`, `.wmv`, `.mkv`, `.flv`, `.m4v`, `.webm`, `.3gp`, `.mpg`, `.mpeg`, `.ts`, `.vob`
- **Spreadsheets:** `.xls`, `.xlsx`, `.csv`
- **Executables:** `.exe`, `.cmd`, `.sh`, `.jar`
- **Contacts:** `.vcf`
- **Presentations:** `.ppt`, `.pptx`, `.key`, `.odp`
- **Audio:** `.mp3`, `.wav`, `.aac`, `.ogg`, `.flac`
- **Archives:** `.zip`, `.rar`, `.7z`, `.tar`, `.gz`



