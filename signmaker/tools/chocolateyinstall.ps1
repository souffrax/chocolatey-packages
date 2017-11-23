$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'http://soft.lissi.ru/docs/SignMaker/SignMaker_setup.exe'
  checksum               = 'b4d4e73d4d3f12a3a0ff985ecee04daa27d4e2906780f69f1d83f908921989dc'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
