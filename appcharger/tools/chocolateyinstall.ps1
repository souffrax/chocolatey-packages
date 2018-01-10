# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\AppCharger(v1.0.6).zip" -Url 'http://asrock.pc.cdn.bitgravity.com/Drivers/All/AppCharger/AppCharger(v1.0.6).zip' -Checksum 'e22009d26e089cd1e1661fdd8a636d4a39ab3670ac575f5dcabb62af263d6e8f' -ChecksumType 'sha256'

Get-ChocolateyUnzip -FileFullPath "$toolsDir\AppCharger(v1.0.6).zip" -Destination $toolsDir

Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' "$toolsDir\AppCharger(v1.0.6)\AsrAppChargerSetup(v1.0.6).exe" -Checksum 'e8775927961416c3e49b07df014a262a6df8c87889f0fbc98ff55cd2c9eefb66' -ChecksumType 'sha256'
