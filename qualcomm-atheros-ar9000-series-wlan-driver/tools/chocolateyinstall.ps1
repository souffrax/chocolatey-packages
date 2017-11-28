$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'http://ftp.hp.com/pub/softpaq/sp58001-58500/sp58498.exe'
  checksum               = 'e998a508bb9f04735810488cbab49693862ce340f136cfa936a3a9196f96a1cf'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
