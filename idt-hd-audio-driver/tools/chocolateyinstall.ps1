$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /a /s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp58501-59000/sp58830.exe'
  checksum               = '98321250f927d0f58cfa753baf53f9722f7e7f29553c06b374de28c42db4bd3f'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
