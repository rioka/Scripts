@echo off
echo To install, run the very same command, from .\VS2019CommOffline, without "--layout..."
echo and "--lang ...", i.e. run the installer downloaded in the folder for offline installation
echo If you get an error, use a distinct "--add ..." for each workload
echo Packages
echo   Microsoft.VisualStudio.Workload.CoreEditor
echo   Microsoft.VisualStudio.Workload.Azure
echo   Microsoft.VisualStudio.Workload.Data
echo   Microsoft.VisualStudio.Workload.ManagedDesktop
echo   Microsoft.VisualStudio.Workload.NativeDesktop
echo   Microsoft.VisualStudio.Workload.NetCoreTools
echo   Microsoft.VisualStudio.Workload.NetWeb
echo   Microsoft.VisualStudio.Workload.Universal
echo If you get an error that a signature is invalid, you must install updated certificates. 
echo Open the Certificates folder in your offline cache. Double-click each of the certificate files, 
echo and then click through the Certificate Manager wizard. If you're asked for a password, leave it blank.
rem See https://docs.microsoft.com/en-us/visualstudio/install/install-certificates-for-visual-studio-offline?view=vs-2019 if experiencing troubles with certificates
rem See https://github.com/MicrosoftDocs/visualstudio-docs/blob/master/docs/install/create-an-offline-installation-of-visual-studio.md
@echo on
vs_community.exe --lang en-US --add Microsoft.VisualStudio.Workload.CoreEditor Microsoft.VisualStudio.Workload.Azure Microsoft.VisualStudio.Workload.Data Microsoft.VisualStudio.Workload.ManagedDesktop Microsoft.VisualStudio.Workload.NativeDesktop Microsoft.VisualStudio.Workload.NetCoreTools Microsoft.VisualStudio.Workload.NetWeb Microsoft.VisualStudio.Workload.Universal --includeRecommended --includeOptional --layout .\VS2019CommOffline
