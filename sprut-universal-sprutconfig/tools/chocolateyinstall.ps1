$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.gsm-sprut.com/files/file/SprutUniversal/v.2.72.60.rar'
  UnzipLocation          = "$env:TMP"
  checksum               = '53ab0d4188512a2364f3099f98da8aa072df46bedd1a61d2b9b4eb9bb1b76f74'
  checksumType           = 'sha256'
  SpecificFolder         = 'V2\Конфигуратор'
}
Install-ChocolateyZipPackage @packageArgs

mv "$env:TMP\V2\Конфигуратор\*" "$env:TMP"

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /v/qn'
  File                   = "$env:TMP\setup.exe"
}
Install-ChocolateyInstallPackage @packageArgs
