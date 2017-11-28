$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /a /s /v"/qn /norestart"'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp56001-56500/sp56487.exe'
  checksum               = '938771e17e8b8ffe1bea8ce6d64550a3fe94dae1d1d61e396402b2913aec5e37'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
