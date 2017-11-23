# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Download from an HTTPS location
Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\litemanager_4.8.zip" -Url 'http://litemanager.com/soft/litemanager_4.8.zip' -Checksum '418eb64254bc11f3795df78c8df8dbac2a1ccb3da21b9490295d19f31bc5c795' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\litemanager_4.8.zip" -Destination $toolsDir
Install-ChocolateyPackage "$env:chocolateyPackageName" 'msi' '/qn /norestart' "$toolsDir\LiteManager Pro - Viewer.msi" -Checksum 'cc923037e783c7d10356be3e3b1cebb3d261ae6124f4d9b2989568ab90e51fbb' -ChecksumType 'sha256'
