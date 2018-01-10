# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\Norton_Security(v22.7.0.76).zip" -Url 'http://asrock.pc.cdn.bitgravity.com/Utility/Others/Norton_Security(v22.7.0.76).zip' -Checksum '90f5f953ef20736e547210f43d74ad07f8d04d6d7fbce156e343f474021a019e' -ChecksumType 'sha256'

Get-ChocolateyUnzip -FileFullPath "$toolsDir\Norton_Security(v22.7.0.76).zip" -Destination $toolsDir

Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '' "$toolsDir\Norton_Security(v22.7.0.76)\Setup.exe" -Checksum '945781ac1ec285687dcf36f62d1d1ea87105755b1ad1bf3a15ab234239162cf6' -ChecksumType 'sha256'
