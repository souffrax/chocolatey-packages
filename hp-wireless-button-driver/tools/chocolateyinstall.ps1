$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /a /s /v"/qn /norestart"'
  url                    = 'https://ftp.hp.com/pub/softpaq/sp59501-60000/sp59835.exe'
  checksum               = 'd329fc0cd4160ad658fb6d6c80a7d9febb0986ad998373e66c7dc132e163942b'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
