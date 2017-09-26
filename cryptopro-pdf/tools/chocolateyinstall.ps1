$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'https://www.cryptopro.ru/sites/default/files/products/pdf/files/20/811/cppdf-win32.msi'
  url64                  = 'https://www.cryptopro.ru/sites/default/files/products/pdf/files/20/811/cppdf-x64.msi'
  checksum               = 'e1d95c8e164bb276052af7e18ac9b607970f67fba1b0e36cf59cb345998c61b2'
  checksum64             = '30ae91a664499b71bc078bd009f535d01ef55d1ccd23f8aff0ae92bd5aeb7440'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyPackage @packageArgs
