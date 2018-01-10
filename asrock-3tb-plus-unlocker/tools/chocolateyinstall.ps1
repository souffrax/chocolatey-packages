$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$env:TMP\3TBUnlocker(v1.1.1).zip"
  url                    = 'http://asrock.pc.cdn.bitgravity.com/Utility/Others/3TBUnlocker(v1.1.1).zip'
  checksum               = 'af089d31740b42969f1fec2e59bfc32bd8892d2ab5e42f7fd083431529077ae8'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs

$packageArgs = @{
  FileFullPath           = "$env:TMP\3TBUnlocker(v1.1.1).zip"
  Destination            = "$env:TMP"
}
Get-ChocolateyUnzip @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  File                   = "$env:TMP\3TBUnlocker(v1.1.1)\ASR3TB+Unlocker(v1.1.1).exe"
}
Install-ChocolateyInstallPackage @packageArgs
