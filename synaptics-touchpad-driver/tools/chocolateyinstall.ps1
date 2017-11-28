$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /a /S'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp58501-59000/sp58832.exe'
  checksum               = '919fbee3019d870f5f13063921fb9e197433a8246d037d5409c25c39fa6bb035'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
