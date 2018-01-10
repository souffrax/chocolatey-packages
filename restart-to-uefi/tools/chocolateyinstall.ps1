# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\RestartToUEFI(v1.0.5).zip" -Url 'http://asrock.pc.cdn.bitgravity.com/Utility/Others/RestartToUEFI(v1.0.5).zip' -Checksum '8c4eba5bb40611243e8836404a9dfcbbc7c601cde41f58433adb9d8f7f72a483' -ChecksumType 'sha256'

Get-ChocolateyUnzip -FileFullPath "$toolsDir\RestartToUEFI(v1.0.5).zip" -Destination $toolsDir

Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' "$toolsDir\RestartToUEFI(v1.0.5)\AsrRuefiSetup(v1.0.5).exe" -Checksum '1593e853ec4efc686d2583e2d3513e4ef52ea5503e0d67700bd0c8a66811666c' -ChecksumType 'sha256'
