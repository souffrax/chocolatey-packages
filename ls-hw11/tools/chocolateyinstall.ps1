$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'http://soft.lissi.ru/docs/LS_HW11/win/LS_HW11-1.0.0-install-win32.exe'
  url64                  = 'http://soft.lissi.ru/docs/LS_HW11/win/LS_HW11-1.0.0-install-win64.exe'
  checksum               = '15530d48ccb8eff816e5792e9c98df38022a59b8d124c5b5a65988e623ddb253'
  checksum64             = '202aff7c4873b740fff2d2f8026e7762f482477f689311213600534d65bbaf71'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyPackage @packageArgs
