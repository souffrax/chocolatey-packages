$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://codeplexarchive.blob.core.windows.net/archive/projects/Peonefs/Peonefs.zip'
  checksum               = '32da77e32ca00a2939045cd97727beb178f558e736379aabccabab8cad2128a2'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  Destination            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  FileFullPath           = "$env:TMP\releases\0\358fb1ff-94d1-4596-8316-234b62059649"
}
Get-ChocolateyUnzip @packageArgs
