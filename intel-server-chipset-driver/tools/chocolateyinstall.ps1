$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://downloadmirror.intel.com/25731/eng/Intel_chipset_10.1.2.10.zip'
  checksum               = '39cbd82efc36ae272fa304a1ae52f75aaca63a1a60c5fb24785d723864735645'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '-s -norestart'
  File                   = "$env:TMP\Intel_chipset_10.1.2.10\SetupChipset.exe"
}
Install-ChocolateyInstallPackage @packageArgs
