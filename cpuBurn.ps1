# Utilize all CPU cores

$CS = Get-WmiObject -class Win32_ComputerSystem
$Cores=$CS.numberoflogicalprocessors

For ($i=1; $i -le $Cores; $i++) {
    echo Creating process no. $i
    Start-Process -NoNewWindow powershell {while(1){}}
 }
