$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp57001-57500/sp57232.exe'
  checksum               = '9bdcc37bf6fe5f89d03e9b0c233dbc050509c23beeec4be8677c30157f13776f'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
