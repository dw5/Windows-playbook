reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
$valueName = "EditionSubVersion"
$valueType = "String"
$valueData = "ReviOS"

# Set the registry value
New-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -PropertyType $valueType -Force

# Set the registry value to show file extensions
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0
