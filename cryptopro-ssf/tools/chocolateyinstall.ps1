$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'https://www.cryptopro.ru/sites/default/files/products/ssf/1.0.10908.0/cpsapssf-win32.msi'
  url64bit               = 'https://www.cryptopro.ru/sites/default/files/products/ssf/1.0.10908.0/cpsapssf-x64.msi'
  checksum               = '8c4b4b943db2d8468f4682a0e135bef46bb185263b08a0d9956f5d86f4878680'
  checksum64             = 'aa5adc8a572a33525ffbaf615f9aa407705a390b4ac85ce577ea12811b6d95f2'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyPackage @packageArgs
