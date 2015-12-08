@echo off

rem pre-requisites 
rem choco install nodejs.install -y
rem choco install docker -y
rem choco install python -y
rem choco install openssl.light -y
rem npm install -g azure-cli

rem docker is optional but nice to have

rem http://azure-openvpn.github.io/

SET VMIMAGE=b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-14_04_3-LTS-amd64-server-20151117-en-us-30GB
SET VMSIZE=Basic_A0
SET VMNAME=dmzsrv

call azure vm docker create -e 22 -l "East US" --vm-size %VMSIZE% %VMNAME% %VMIMAGE% vmuser

call azure vm endpoint create --protocol tcp %VMNAME% 443 443
call azure vm endpoint create --protocol tcp %VMNAME% 943 943
call azure vm endpoint create --protocol udp %VMNAME% 1194 1194

echo please wait vm provisioning...
pause

rem call docker --tls -H tcp://%VMNAME%.cloudapp.net:2376 info

rem wget -c http://swupdate.openvpn.org/as/openvpn-as-2.0-Ubuntu13.amd_64.deb
rem sudo dpkg -i openvpn-as-2.0-Ubuntu13.amd_64.deb
rem sudo passwd openvpn

call putty vmuser@%VMNAME%.cloudapp.net 

echo https://%VMNAME%.cloudapp.net:943/admin
