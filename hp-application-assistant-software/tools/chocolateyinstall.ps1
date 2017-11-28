$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp55001-55500/sp55066.exe'
  checksum               = '4be3a6bb58a262dd7fb4f4c48ed1d3e9b163e113c7c10d9c7b39c02e6e71cf5f'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
