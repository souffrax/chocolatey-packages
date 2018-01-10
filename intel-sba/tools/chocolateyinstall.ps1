# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\SBA(v4.1.31).zip" -Url 'http://asrock.pc.cdn.bitgravity.com/Utility/Intel/SBA(v4.1.31).zip' -Checksum 'c736f0b86138e0d7e0126bb8a7464ace1d504f2eb8ad9f704fd8c971544c0950' -ChecksumType 'sha256'

Get-ChocolateyUnzip -FileFullPath "$toolsDir\SBA(v4.1.31).zip" -Destination $toolsDir
