# Use all remaining free space on C partition

[io.file]::Create("$env:temp\chaos-disk-fill-experiment.txt").SetLength((gwmi Win32_LogicalDisk -Filter "DeviceID='C:'").FreeSpace).Close
