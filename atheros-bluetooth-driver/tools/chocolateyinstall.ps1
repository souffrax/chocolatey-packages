$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp58001-58500/sp58499.exe'
  checksum               = 'e7d4b4d7a6da38703fc1fc508a97bd6b6b2f0a5711d7a0f39a488e2a43c313c1'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
