# WSL
WSL2 Installation Script (PowerShell)

#### Steps to run the install-script
Run Windows PowerShell as Administrator and execute:
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
.\install_wsl2.ps1
```
OR
```
powershell -ExecutionPolicy Bypass -File .\install_wsl.ps1
```
#### WSL Ubuntu update steps

```
sudo apt update
sudo apt upgrade
sudo apt install build-essential make gcc git vim vim-gtk3
```
