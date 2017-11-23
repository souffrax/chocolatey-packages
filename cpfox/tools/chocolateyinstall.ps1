$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '-ms'
  url                    = 'https://www.cryptopro.ru/sites/default/files/products/cpfox/45/cpfox-45.1.2.en-US.win32.installer.exe'
  checksum               = '73760ed2ab13afa2a259a492c0eff433eb121b695c7375addea77107949d11a7'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
