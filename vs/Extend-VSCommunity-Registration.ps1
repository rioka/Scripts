# Run from link
# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
Add-Type -AssemblyName System.Security
# TODO make path customizable
Import-Module -Name D:\progetti\externalSamples\VSCELicense\VSCELicense.psm1
Set-VSCELicenseExpirationDate -Version VS2019
# when running from link, wait so that user can see output...
Read-Host "Press ENTER to continue..."