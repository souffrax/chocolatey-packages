$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://downloadmirror.intel.com/19792/eng/IPDT_Installer_4.1.0.24.exe'
  checksum               = '7b3ca4249b4849a3f82ee4a65698a4c691f2aebe0f8170b3e162f56c6ed19843'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /v/qn'
  File                   = "$env:TMP\setup.exe"
  File64                 = "$env:TMP\setup64.exe"
}
Install-ChocolateyInstallPackage @packageArgs
