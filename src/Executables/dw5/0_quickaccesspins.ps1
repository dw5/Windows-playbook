# Pin Recycle Bin to Quick Access
$recycleBinPath = "::{645FF040-5081-101B-9F08-00AA002F954E}"
New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\ShellFolder" -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\ShellFolder" -Name Attributes -Value ([byte[]](0,0,0,0))

# Replace 'username' with the actual username
$username = $env:USERNAME
$userProfilePath = "C:\Users\$username"

# Pin user's profile folder to Quick Access
$userProfileGuid = "{59031a47-3f72-44a7-89c5-5595fe6b30ee}"
New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\$userProfileGuid\ShellFolder" -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\$userProfileGuid\ShellFolder" -Name Attributes -Value ([byte[]](0,0,0,0))
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\$userProfileGuid\ShellFolder" -Name CallForAttributes -Value 0