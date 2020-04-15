# Use all remaining free space on C partition

[io.file]::Create("$env:temp\reallybigfile-deleteme.txt").SetLength((gwmi Win32_LogicalDisk -Filter "DeviceID='C:'").FreeSpace).Close
