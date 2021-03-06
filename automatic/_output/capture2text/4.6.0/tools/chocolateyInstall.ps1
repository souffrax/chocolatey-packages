$packageName = 'capture2text'
$urlArray = @('https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v4.6.0/Capture2Text_v4.6.0_32bit.zip/download', 'https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v4.6.0/Capture2Text_v4.6.0_64bit.zip/download')
$url = $urlArray[0]
$checksum = '0168a822abd9fc06429ad8b248ccf2bee4d3f3fd2bd766a2a7c1c292c054e726'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'b13c4fa15b30e1c3906a7f3061619fc7eb5b7d68b3d234cea44977af3c55591c'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"