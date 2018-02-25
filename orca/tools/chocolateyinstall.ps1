$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/platformsdk/sdk/update/win98mexp/en-us/3718.1/msisdk-common.3.0.cab'
  checksum               = 'b0493289274d931bc194d9d2716f9526890be822e4f107448cd3c59402a70a0f'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
  SpecificFolder         = 'Orca_Msi.FD66E721_5AA0_41BC_AA26_1EC8F7FA1175'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\Orca_Msi.FD66E721_5AA0_41BC_AA26_1EC8F7FA1175"
}
Install-ChocolateyInstallPackage @packageArgs
