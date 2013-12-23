Set-ExecutionPolicy Unrestricted
Disable-UAC
Enable-RemoteDesktop
Disable-InternetExplorerESC
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Move-LibraryDirectory "{374DE290-123F-4565-9164-39C4925E467B}" "d:\Downloads"

cinst TelnetClient -source windowsfeatures

cinst ChocolateyGUI

Set-ExecutionPolicy RemoteSigned
Write-Host "Installation completed"

# Create Powershell profile if it's not exist
Write-Host "Looking for user profile"
If ((Test-Path $profile) -eq $True) {
    Write-Host "Profile exists"
}
Else {
    Write-Host "Profile doesn't exist. Trying to create..."
    New-Item -Path $profile -ItemType File -force
    If ((Test-Path $profile) -eq $True) {
        Write-Host "Profile was successfuly created"
    }
    Else {
        Write-Host "Can not create profile. Exiting.."
        Exit
    }
}
# Configure Powershell
Write-Host "Setting up Powershell start location"
"Set-Location C:\" >> $profile

git config --global user.name "Uladzimir Kazakevich"
git config --global user.email "kwull@kwull.com"
git config --global push.default simple
git config --global credential.helper store

Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles\Paint.NET\PaintDotNet.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\Fiddler2\Fiddler.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\LINQPad4\LINQPad.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\Remote Desktop Connection Manager\RDCMan.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\XMind\XMind.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles(x86)\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "C:\totalcmd\TOTALCMD64.EXE"