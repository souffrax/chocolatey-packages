$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.dahuasecurity.com/asset/upload/download/20180328/481334_dh_smartpss_international_is_v2_00_1_r_20170225.zip'
  checksum               = '2501ff7354594685bdb77d8557f526ce4e200fa4090118a4086b5634c5038790'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  File                   = "$env:TMP\SmartPSS_Setup.exe"
}
Install-ChocolateyInstallPackage @packageArgs
