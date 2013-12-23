Disable-UAC
Disable-InternetExplorerESC
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Move-LibraryDirectory "{374DE290-123F-4565-9164-39C4925E467B}" "d:\Downloads"

cinst TelnetClient -source windowsfeatures
cinst Microsoft-Hyper-V-All -source windowsfeatures

cinst ChocolateyGUI
cinst webpicommandline

cinst GoogleChrome
cinst javaruntime 
cinst flashplayerplugin 
cinst Silverlight 
cinst dropbox
cinst skype

cinst vlc
cinst aimp
#cinst spotify
cinst adobereader
cinst windjview

cinst TotalCommander
cinst sysinternals
cinst f.lux
cinst TeraCopy
cinst gow
cinst rdcman
cinst lockhunter
cinst windirstat
cinst Wget
cinst curl
cinst 7zip.install
cinst notepadplusplus.install
cinst SublimeText3
cinst paint.net
cinst xmind

cinst putty.install
cinst winscp

cinst winmerge
cinst linqpad4
cinst dotPeek
cinst fiddler4
cinst windbg
cinst baretail
cinst nodejs.install

cinst slik.svn
cinst tortoisesvn
cinst git
cinst poshgit
cinst ScriptCs

cinst truecrypt

Write-Host "Installation completed"

#git config --global user.name "Uladzimir Kazakevich"
git config --global push.default simple
git config --global credential.helper store
git config --global alias.a add
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.d diff
git config --global alias.br branch
git config --global alias.mr merge
git config --global alias.l log
git config --global alias.p pull
git config --global alias.rb rebase
git config --global alias.sh show

Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles\Paint.NET\PaintDotNet.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Fiddler2\Fiddler.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\LINQPad4\LINQPad.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Remote Desktop Connection Manager\RDCMan.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\XMind\XMind.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "C:\totalcmd\TOTALCMD64.EXE"
