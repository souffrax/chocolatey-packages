$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'ftp://ftp2.dlink.com/SOFTWARE/SMART_CONSOLE_UTILITY/SMARTCONSOLEUTILITY_3.00.ZIP'
  checksum               = '4aff50445a33c9a9ffeb28760c684a00e92ca4ae639e2610b4f7ce0aa8863a68'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = "/s /b`"$env:TMP\$env:chocolateyPackageName`""
  File                   = "$env:TMP\SMARTCONSOLEUTILITY_3.00\SMARTCONSOLEUTILITY_3.00_WIN.EXE"
  ValidExitCodes         = @(0,-3)
}
Install-ChocolateyInstallPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\$env:chocolateyPackageName\D-Link SmartConsole Utility.msi"
}
Install-ChocolateyInstallPackage @packageArgs
