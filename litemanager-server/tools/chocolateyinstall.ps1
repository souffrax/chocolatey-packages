# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Download from an HTTPS location
Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\litemanager_4.8.zip" -Url 'http://litemanager.com/soft/litemanager_4.8.zip' -Checksum '418eb64254bc11f3795df78c8df8dbac2a1ccb3da21b9490295d19f31bc5c795' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\litemanager_4.8.zip" -Destination $toolsDir
Install-ChocolateyPackage "$env:chocolateyPackageName" 'msi' '/qn /norestart' "$toolsDir\LiteManager Pro - Server.msi" -Checksum 'c7fbdb838346de564452ee13a0056c5ce98ea03492daa5a0dc284dc69efa77ee' -ChecksumType 'sha256'
