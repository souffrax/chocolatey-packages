$key = Get-UninstallRegistryKey -SoftwareName "Download Master version $env:ChocolateyPackageVersion"

#Uninstall-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' "$key.UninstallString"
Uninstall-ChocolateyPackage -PackageName "$env:chocolateyPackageName" -FileType 'exe' -SilentArgs '/SILENT /SUPPRESSMSGBOXES /NORESTART /SP-' -File $key.UninstallString.replace('"', '')
