$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'http://soft.lissi.ru/docs/LS11SW/win/ls11sw-1.0.0-install-win32.exe'
  url64                  = 'http://soft.lissi.ru/docs/LS11SW/win/LS11SW-1.0.0-install-win64.exe'
  checksum               = 'e8bbaa7bd66d018d53dcaa717490f778cb726c98e27a7357b22b6d7567fe5180'
  checksum64             = '46fe5009b27ba21cb461f82d872ea9b00ef32130587608463371b1ad37d68d53'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyPackage @packageArgs
