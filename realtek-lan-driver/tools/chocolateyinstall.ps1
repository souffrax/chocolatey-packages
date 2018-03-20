$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://12244.wpc.azureedge.net/8012244/drivers/rtdrivers/cn/nic/0022-Install_Win10_10025_02262018.zip'
  checksum               = '908d914cecc9e4bc7335024043061fd72e77b70d64d4fa5a0b7c6ddf646f1bf4'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  File                   = "$env:TMP\0022-Install_Win10_10025_02262018\Install_Win10_10025_02262018\setup.exe"
}
Install-ChocolateyInstallPackage @packageArgs
