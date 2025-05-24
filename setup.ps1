if (-not ([Security.Principal.WindowsPrincipal]([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "This script requires administrator privileges to run."
    exit 1
}

$repositoryUri = "https://github.com/kyedavey/win-setup/archive/refs/heads/main.zip"

Set-Location $env:TEMP
Invoke-WebRequest -Uri $repositoryUri -OutFile win-setup-main.zip
Expand-Archive -Path win-setup-main.zip -DestinationPath . -Force

Invoke-Expression .\win-setup-main\win\win-setup.ps1