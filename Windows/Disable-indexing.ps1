if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs;
    exit
    }

Set-Service WSearch -StartupType Disabled
Stop-Service WSearch
.\Set-Owner.ps1 -Path C:\ProgramData\Microsoft\Search\Data -Recurse 
Remove-Item C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb
