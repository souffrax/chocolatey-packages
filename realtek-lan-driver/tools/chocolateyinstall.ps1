$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /a /s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp54501-55000/sp54998.exe'
  checksum               = '131639e80c26d3a5a5887016a4b160212f7f5db43e95cb98df4e556cc031bf0d'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
