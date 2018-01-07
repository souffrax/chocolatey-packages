$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'http://downloadmaster.ru/dm/archive/dmaster_6.14.2.1577_20.10.2017.exe'
  checksum               = '05e848e4bbb87e42587ab4dfbd682c8dbcbaedf41714880f6c920d9cac7e1208'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
