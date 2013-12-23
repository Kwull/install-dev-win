#Disable-UAC
#Disable-InternetExplorerESC
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Move-LibraryDirectory "{374DE290-123F-4565-9164-39C4925E467B}" "d:\Downloads"

cinst TelnetClient -source windowsfeatures

cinst ChocolateyGUI

Write-Host "Installation completed"

git config --global user.name "Uladzimir Kazakevich"
git config --global user.email "kwull@kwull.com"
git config --global push.default simple
git config --global credential.helper store

Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles\Paint.NET\PaintDotNet.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Fiddler2\Fiddler.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\LINQPad4\LINQPad.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Remote Desktop Connection Manager\RDCMan.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\XMind\XMind.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "C:\totalcmd\TOTALCMD64.EXE"

Set-ExecutionPolicy RemoteSigned