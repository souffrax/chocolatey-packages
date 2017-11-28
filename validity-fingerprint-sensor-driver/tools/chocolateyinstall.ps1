$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp58501-59000/sp58834.exe'
  checksum               = 'b135c629702fd01ba3414a43545f0c47258c9e305730d1c0b718ff24521221bf'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
