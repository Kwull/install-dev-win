#Disable-UAC
#Disable-InternetExplorerESC
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
#Move-LibraryDirectory "{374DE290-123F-4565-9164-39C4925E467B}" "c:\!Work\Downloads"

cinst TelnetClient -source windowsfeatures
#cinst Microsoft-Hyper-V-All -source windowsfeatures

#cinst webpicommandline

#editors
choco install notepadplusplus.install -y

#web 
choco install googlechrome -y
choco install jre8 -y
choco install flashplayerplugin -y

#js dev tools
choco install git.install -y
choco install nodejs.install -y

#IM
choco install skype -y
choco install telegram.install -y

#tools
choco install dropbox -y
choco install sysinternals -y
choco install putty -y
choco install adobereader -y
choco install 7zip.install -y


########
cinst dropbox


# choco install docker -y
choco install python -y
choco install openssl.light -y
npm install -g azure-cli

cinst vlc
cinst aimp
#cinst spotify
#cinst windjview

cinst TotalCommander
#cinst freefilesync
cinst f.lux
cinst TeraCopy
cinst gow
#cinst rdcman
#cinst lockhunter
cinst windirstat
cinst Wget
cinst curl
#cinst SublimeText3
cinst paint.net
#cinst xmind

cinst winscp

cinst p4merge
#cinst winmerge
cinst linqpad4
cinst dotPeek
cinst fiddler4
cinst windbg
cinst baretail
cinst AzureStorageExplorer

#cinst slik.svn
cinst tortoisesvn
cinst poshgit
cinst ScriptCs

#cinst truecrypt

#cinst virtualbox
#cinst vagrant

Write-Host "Installation completed"

#git config --global user.name "Uladzimir Kazakevich"
git config --global core.autocrlf false
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
git config --global merge.tool p4merge
git config --global mergetool.prompt false
git config --global mergetool.keepBackup false
git config --global mergetool.trustExitCode true
git config --global diff.tool p4merge
git config --global difftool.prompt false
git config --global core.editor "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"

Install-ChocolateyPinnedTaskBarItem "$env:ProgramFiles\Paint.NET\PaintDotNet.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Fiddler2\Fiddler.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\LINQPad4\LINQPad.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Neudesic\Azure Storage Explorer\AzureStorageExplorer.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Remote Desktop Connection Manager\RDCMan.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\XMind\XMind.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\AIMP3\AIMP3.exe"
Install-ChocolateyPinnedTaskBarItem "C:\totalcmd\TOTALCMD64.EXE"
