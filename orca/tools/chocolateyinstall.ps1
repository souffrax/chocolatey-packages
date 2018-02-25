$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/platformsdk/sdk/update/win98mexp/en-us/3790.0/msisdk-common.3.0.cab'
  checksum               = '6374c551192004abdb7960024309059e12a2bb83a2261165c50c75cb83648bf3'
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
