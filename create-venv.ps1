# venv_setup.ps1
# PowerShell script to set up Python virtual environment

# Stop on errors
$ErrorActionPreference = "Stop"

Write-Host "Starting Python virtual environment setup..." -ForegroundColor Green

# Remove existing .venv if it exists
if (Test-Path -Path ".\.venv") {
  Write-Host "Removing existing virtual environment..." -ForegroundColor Yellow
  Remove-Item -Recurse -Force ".\.venv"
}

# Create new virtual environment
Write-Host "Creating new virtual environment..." -ForegroundColor Green
python -m venv .venv

# Activate virtual environment
Write-Host "Activating virtual environment..." -ForegroundColor Green
& .\.venv\Scripts\Activate.ps1

# Verify activation
Write-Host "Python interpreter: $(python -c 'import sys; print(sys.executable)')" -ForegroundColor Cyan

# Upgrade pip
Write-Host "Upgrading pip..." -ForegroundColor Green
python -m pip install --upgrade pip

# Install packages from requirements file
Write-Host "Installing packages from fixed requirements file..." -ForegroundColor Green
python -m pip install -r requirements.txt
    
# Check for errors
if ($LASTEXITCODE -ne 0) {
  Write-Host "Error installing packages. There may be other problematic dependencies." -ForegroundColor Red
    
  # Fallback: install azure-cosmos directly if needed
  Write-Host "Attempting to install azure-cosmos directly..." -ForegroundColor Yellow
  python -m pip install azure-cosmos
}

# List installed packages
Write-Host "Installed packages:" -ForegroundColor Green
python -m pip list

Write-Host "Virtual environment setup complete!" -ForegroundColor Green
Write-Host "The virtual environment is now activated in this PowerShell session." -ForegroundColor Cyan