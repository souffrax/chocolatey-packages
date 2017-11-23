$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.ftdichip.com/Drivers/CDM/CDM21228_Setup.zip'
  checksum               = 'b887670f18348f94426957f217051e30416ca3126f1333bfb5c120a8bae21db8'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  FileFullPath           = "$env:TMP\CDM21228_Setup.exe"
  Destination            = "$env:TMP\$env:chocolateyPackageName"
}
Get-ChocolateyUnzip @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S /SE'
  File                   = "$env:TMP\$env:chocolateyPackageName\dpinst-x86.exe"
  File64                 = "$env:TMP\$env:chocolateyPackageName\dpinst-amd64.exe"
  ValidExitCodes         = @(0,512)
}
Install-ChocolateyInstallPackage @packageArgs
