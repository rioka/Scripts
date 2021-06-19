@echo off
echo To install, run the very same command, from .\VS2019EntOffline, without "--layout..."
echo and "--lang ...", i.e. run the installer downloaded in the folder for offline installation
echo If you get an error, use a distinct "--add ..." for each workload
echo Packages to download
echo Microsoft.VisualStudio.Workload.CoreEditor
echo Microsoft.VisualStudio.Workload.Azure
echo Microsoft.VisualStudio.Workload.Data
echo Microsoft.VisualStudio.Workload.ManagedDesktop
echo Microsoft.VisualStudio.Workload.NativeDesktop
echo Microsoft.VisualStudio.Workload.NetCoreTools
echo Microsoft.VisualStudio.Workload.NetWeb
echo Microsoft.VisualStudio.Workload.Universal
@echo on
vs_enterprise.exe --lang en-US --add Microsoft.VisualStudio.Workload.CoreEditor Microsoft.VisualStudio.Workload.Azure Microsoft.VisualStudio.Workload.Data Microsoft.VisualStudio.Workload.ManagedDesktop Microsoft.VisualStudio.Workload.NativeDesktop Microsoft.VisualStudio.Workload.NetCoreTools Microsoft.VisualStudio.Workload.NetWeb Microsoft.VisualStudio.Workload.Universal --includeRecommended --includeOptional --layout .\VS2019EntOffline,
