# Path to the folder where the script is executing
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$toolsDir\APPShop(v1.0.31).zip" -Url 'http://asrock.pc.cdn.bitgravity.com/Utility/Others/APPShop(v1.0.31).zip' -Checksum 'e34be32fcf62112996a4f7c17d1e90b9366b33a88c9a68330346760a5b857831' -ChecksumType 'sha256'

Get-ChocolateyUnzip -FileFullPath "$toolsDir\APPShop(v1.0.31).zip" -Destination $toolsDir

Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' "$toolsDir\APPShop(v1.0.31)\APPShopSetup(v1.0.31).exe" -Checksum '3929474b52442d0bd4b73e77a3d120a9ae462011f18f9e041aabac2710f1192a' -ChecksumType 'sha256'
