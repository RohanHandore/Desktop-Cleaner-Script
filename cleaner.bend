fn main() {
    // Define the directory path
    let desktop_path = os::getcwd();

    // Map of file extensions to folder names
    let extension_map = {
        ".txt": "Documents",
        ".docx": "Documents",
        ".pdf": "PDFs",
        ".doc": "Documents",
        ".rtf": "Documents",
        ".odt": "Documents",
        ".jpg": "Images",
        ".jpeg": "Images",
        ".png": "Images",
        ".gif": "Images",
        ".bmp": "Images",
        ".tiff": "Images",
        ".ico": "Images",
        ".svg": "Images",
        ".psd": "Images",
        ".ai": "Images",
        ".mp4": "Videos",
        ".avi": "Videos",
        ".mov": "Videos",
        ".wmv": "Videos",
        ".mkv": "Videos",
        ".flv": "Videos",
        ".m4v": "Videos",
        ".webm": "Videos",
        ".3gp": "Videos",
        ".mpg": "Videos",
        ".mpeg": "Videos",
        ".ts": "Videos",
        ".vob": "Videos",
        ".xls": "Spreadsheets",
        ".xlsx": "Spreadsheets",
        ".csv": "Data",
        ".exe": "Executables",
        ".bat": "Executables",
        ".sh": "Executables",
        ".jar": "Executables",
        ".vcf": "Contacts",
        ".ppt": "Presentations",
        ".pptx": "Presentations",
        ".key": "Presentations",
        ".odp": "Presentations",
        ".mp3": "Audio",
        ".wav": "Audio",
        ".aac": "Audio",
        ".ogg": "Audio",
        ".flac": "Audio",
        ".zip": "Archives",
        ".rar": "Archives",
        ".7z": "Archives",
        ".tar": "Archives",
        ".gz": "Archives"
    };

    // Loop through all files in the directory
    for path in fs::read_dir(&desktop_path) {
        if path.is_file() {
            let ext = path.extension().unwrap_or("");
            if extension_map.contains_key(ext) {
                let folder = extension_map[ext];
                let folder_path = desktop_path.join(folder);
                if !folder_path.exists() {
                    fs::create_dir(&folder_path);
                }
                fs::move(&path, folder_path.join(path.file_name().unwrap()));
            }
        }
    }

    println("Desktop cleaned!");
}
