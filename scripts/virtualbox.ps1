$ErrorActionPreference = "Stop"

Write-Host "Installing VirtualBox guest additions"

# There needs to be Oracle CA (Certificate Authority) certificates installed in order
# to prevent user intervention popups which will undermine a silent installation
& cmd /c certutil -addstore -f "TrustedPublisher" A:\oracle.cer

# Install guest additions assuming the install ISO has been mounted
& E:\VBoxWindowsAdditions.exe /S
