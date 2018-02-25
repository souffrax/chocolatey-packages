$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/platformsdk/sdk/update/win98mexp/en-us/2600.2180/PSDK-SDK_MSI_BIN-common.0.cab'
  checksum               = '43c5d39548ad24bc2d45ca2e4b6f47c0394388ccee71af7ed7c8a2dd71b48459'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
  SpecificFolder         = 'Orca_Msi.A56930A2_F5D6_4E2A_BF20_10057BD915EB'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\Orca_Msi.A56930A2_F5D6_4E2A_BF20_10057BD915EB"
}
Install-ChocolateyInstallPackage @packageArgs
