$ErrorActionPreference = "Stop"

# Install chocolatey package manager
Write-Host "Installing chocolatey package manager"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
