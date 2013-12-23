Developer tools for Windows
===============

Developer tools install scripts for Windows powered by [Chocolatey]

Installation
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

Software list
---
Software list is in [packages.config]

TO DO
---
Use [Boxstarter] to install everything.

Build on top of Chocolatey and NuGet and create complete Windows environments and push them to your machines with Gists from your friends or your own GitHub. Even deploy to remote machines or Hyper-V with 100% unattended installs.

Useful tools
---
Scott Hanselman's 2014 Ultimate Developer and Power Users Tool List for Windows: [DevTools]

[Chocolatey]:http://chocolatey.org/
[Boxstarter]:http://boxstarter.org/
[packages.config]:https://github.com/Kwull/install-dev-win/blob/master/scripts/packages.config
[DevTools]:http://www.hanselman.com/blog/ScottHanselmans2014UltimateDeveloperAndPowerUsersToolListForWindows.aspx
