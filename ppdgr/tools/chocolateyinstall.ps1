$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /sp"/qn /norestart"'
  url                    = 'https://www.gnivc.ru/html/gnivcsoft/ppdgr/1.4.8/Setup_PPDGR_full.exe'
  checksum               = 'df6e6f4080544b0be47d8a85426fbf6ec31de64d8de96a47c0276d6edeaf507e'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
