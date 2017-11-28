$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp56001-56500/sp56221.exe'
  checksum               = '3b1d15c3ea279b946618a3372c885f6673fbc99ea8c81928035472d03544ea3a'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
