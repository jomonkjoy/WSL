# ============================================================
# WSL2 + Ubuntu Installation Script (Windows 11)
# ============================================================

Write-Host "Starting WSL2 + Ubuntu setup..." -ForegroundColor Cyan

# Enable required features
Write-Host "Enabling WSL features..." -ForegroundColor Yellow

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Set WSL2 as default
wsl --set-default-version 2

# Install WSL core (kernel)
wsl --update

# Install Ubuntu (choose ONE method)

# Method 1: WSL native
wsl --install -d Ubuntu

# OR Method 2: Store via winget
# winget install -e --id Canonical.Ubuntu

# Verify
wsl --status
wsl -l -v

Write-Host "Setup complete. Reboot may be required." -ForegroundColor Green

Write-Host "System will reboot in 10 seconds..." -ForegroundColor Yellow
Start-Sleep -Seconds 10
Restart-Computer -Force
