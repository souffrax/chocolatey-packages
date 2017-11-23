$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'http://soft.lissi.ru/docs/LCSignPluginNSS/win/LCSignPlugin_setup.exe'
  checksum               = '2395a79eb4b156bb5047f0f3b5677a53a478f0b2b0bd85377949cfe3da6c62d0'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
