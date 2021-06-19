: use "update" to update existing installation
: use --quiet no skip prompt dialogs
cd VS2019CommOffline
vs_community.exe update --add Microsoft.VisualStudio.Workload.CoreEditor --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.Data --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Universal --includeRecommended --includeOptional --quiet