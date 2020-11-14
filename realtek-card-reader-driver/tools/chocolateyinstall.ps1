$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://realtekcdn.akamaized.net/rtdrivers/pc/crc/0007-RtsXStor_10.0.370.188.zip?__token__=exp=1605372115~acl=/rtdrivers/pc/crc/0007-RtsXStor_10.0.370.188.zip'
  checksum               = '5e054924cadd182c8feb28000688dff3db72885d8e42281971d0930d497d607a'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  File                   = "$env:TMP\RtsXStor_10.0.370.188\setup.exe"
}
Install-ChocolateyInstallPackage @packageArgs
