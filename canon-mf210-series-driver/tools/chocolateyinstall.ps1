$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/auto'
  url                    = 'http://gdlp01.c-wss.com/gds/9/0100006239/02/MF210MFDriverV2120W32usEN.exe'
  url                    = 'http://gdlp01.c-wss.com/gds/0/0100006240/02/MF210MFDriverV2120W64usEN.exe'
  checksum               = 'be57154262df311e1293a79aa1f6d26eaac2d1d0d8e10990cc4344560da058db'
  checksum64             = '3ebdad9abe953fcf1b5804b9632becfbd3c7fc357fe00104c967837d2f5a9d1a'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyPackage @packageArgs
