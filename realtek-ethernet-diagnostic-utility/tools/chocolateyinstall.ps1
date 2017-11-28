$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://12244.wpc.azureedge.net/8012244/drivers/rtdrivers/cn/nic/0004-Diagnostic_v2.0.3.0_AllInOneRel_0803.zip'
  checksum               = '8e3bbbb2267e1d300ccca6abb91ebfbe902e29617c57179527fd76d10c369b9e'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s'
  File                   = "$env:TMP\Diagnostic_v2.0.3.0_AllInOneRel_0803\setup.exe"
}
Install-ChocolateyInstallPackage @packageArgs
