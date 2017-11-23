$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.docash.ru/data/file/DoCash_Golf_Vega_USB-driver.rar'
  UnzipLocation          = "$env:TMP"
  checksum               = '31fade8c64267ee1fb9473277cf4c8bc23089fe2f80f356d0c136e77652fea06'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /sp/s'
  File                   = "$env:TMP\DoCash_Golf_Vega_USB-driver\DoCash_Golf_Vega_USB-driver.exe"
}
Install-ChocolateyInstallPackage @packageArgs
