# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Download from an HTTPS location
Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\Capicom.zip" -Url 'https://www.kontur-extern.ru/Files/Modules/CmsFile/Capicom.zip' -Checksum '2728dcf1bf22e89d9ed46ad040be38dd21233cb4453d13d17d35ee9d03e5b092' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\Capicom.zip" -Destination $toolsDir
Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '/S' "$toolsDir\capicom.exe" -Checksum '1119e17118f1d576489a8403323ddc41e86cd04980a6b399e89d213200169b2e' -ChecksumType 'sha256'
