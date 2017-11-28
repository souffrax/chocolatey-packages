$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp56001-56500/sp56036.exe'
  checksum               = '217002e5659b8913f521eb0e0666bbcc3b27bc0a1be429b1aca7d090f49be051'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
