$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'http://soft.lissi.ru/docs/PKCS11Manager_Web/win/LSPK11ConfPlugin_setup.exe'
  checksum               = '99da542d01ffc69e0a8eb223b7a60a4eacc66d31de452a3745d9acc5beb80d85'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
