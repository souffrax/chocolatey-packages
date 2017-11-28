$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp55001-55500/sp55461.exe'
  checksum               = '9c9281dfb930648658000840fa84a27a1361d10e95d740b911a3b2f38ebb0da8'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
