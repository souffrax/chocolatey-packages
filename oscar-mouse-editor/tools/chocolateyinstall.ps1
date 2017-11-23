$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.x7.cn/cn/driver/7Key_V12.08V17.zip'
  checksum               = '43bcbe33abfb2e8bf13f452dc03be408da8ffd357727fd433c7f8f67ffbbba34'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  FileFullPath           = "$env:TMP\7Key_V12.08V17.exe"
  Destination            = "$env:TMP"
}
Get-ChocolateyUnzip @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\OSCAR Editor.msi"
}
Install-ChocolateyInstallPackage @packageArgs
