Developer tools for Windows
===============

Developer tools install scripts for Windows powered by [Chocolatey] and [Boxstarter]

Installation
---
Uses [Boxstarter] to install everything.

Build on top of Chocolatey and NuGet and create complete Windows environments and push them to your machines with Gists from your friends or your own GitHub. Even deploy to remote machines or Hyper-V with 100% unattended installs.

Use ClickOnce from IE: [BoxStarter-install]

or
Use Windows command line:
```cmd
start http://boxstarter.org/package/nr/url?https://raw.github.com/Kwull/install-dev-win/master/scripts/boxstarter.ps1
```

In addtional configure PowerShell
```powershell
Set-ExecutionPolicy RemoteSigned
```

Software list
---
Software list is in [Install script]


TO DO
---
Autoreplace notepad by notepad++ using [VBS] and [REG] file

Installation (outdated)
---

Chocolatey
```cmd
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
```
Developer tools
```cmd
cinst scripts\packages.config
```
PowerShell
```powershell
Set-ExecutionPolicy RemoteSigned
```

Useful tools
---
Scott Hanselman's 2014 Ultimate Developer and Power Users Tool List for Windows: [DevTools]

[Chocolatey]:http://chocolatey.org/
[Boxstarter]:http://boxstarter.org/
[BoxStarter-install]:http://boxstarter.org/package/nr/url?https://raw.github.com/Kwull/install-dev-win/master/scripts/boxstarter.ps1
[Install script]:https://github.com/Kwull/install-dev-win/blob/master/scripts/boxstarter.ps1
[DevTools]:http://www.hanselman.com/blog/ScottHanselmans2014UltimateDeveloperAndPowerUsersToolListForWindows.aspx
[VBS]:https://github.com/Kwull/install-dev-win/blob/master/scripts/npp.vbs
[REG]:https://github.com/Kwull/install-dev-win/blob/master/scripts/notepad_replace.reg
