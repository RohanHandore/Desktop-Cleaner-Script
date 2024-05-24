import os
import shutil

# Define the path to the current directory
desktop_path = os.getcwd()  # Use current working directory

# Categories and their corresponding folder names
categories = {
    '.txt': 'Documents', '.docx': 'Documents', '.pdf': 'PDFs', '.doc': 'Documents',
    '.rtf': 'Documents', '.odt': 'Documents',
    '.jpg': 'Images', '.jpeg': 'Images', '.png': 'Images', '.gif': 'Images',
    '.bmp': 'Images', '.tiff': 'Images', '.ico': 'Images', '.svg': 'Images',
    '.psd': 'Images', '.ai': 'Images',
    '.mp4': 'Videos', '.avi': 'Videos', '.mov': 'Videos', '.wmv': 'Videos',
    '.mkv': 'Videos', '.flv': 'Videos', '.m4v': 'Videos', '.webm': 'Videos',
    '.3gp': 'Videos', '.mpg': 'Videos', '.mpeg': 'Videos', '.ts': 'Videos', '.vob': 'Videos',
    '.xls': 'Spreadsheets', '.xlsx': 'Spreadsheets', '.csv': 'Data',
    '.exe': 'Executables', '.bat': 'Executables', '.sh': 'Executables', '.jar': 'Executables',
    '.vcf': 'Contacts',
    '.ppt': 'Presentations', '.pptx': 'Presentations', '.key': 'Presentations', '.odp': 'Presentations',
    '.mp3': 'Audio', '.wav': 'Audio', '.aac': 'Audio', '.ogg': 'Audio', '.flac': 'Audio',
    '.zip': 'Archives', '.rar': 'Archives', '.7z': 'Archives', '.tar': 'Archives', '.gz': 'Archives'
}

# Determine which folders are needed
needed_folders = set()
for filename in os.listdir(desktop_path):
    file_path = os.path.join(desktop_path, filename)
    if os.path.isfile(file_path):
        file_ext = os.path.splitext(filename)[1].lower()  # Ensure case insensitivity
        folder_name = categories.get(file_ext)
        if folder_name:
            needed_folders.add(folder_name)

# Create only the needed folders
for folder in needed_folders:
    folder_path = os.path.join(desktop_path, folder)
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

# Move files into corresponding folders
for filename in os.listdir(desktop_path):
    file_path = os.path.join(desktop_path, filename)
    if os.path.isfile(file_path):
        file_ext = os.path.splitext(filename)[1].lower()  # Ensure case insensitivity
        folder_name = categories.get(file_ext)
        if folder_name:
            shutil.move(file_path, os.path.join(desktop_path, folder_name, filename))

print("Desktop cleaned!")
