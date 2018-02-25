$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/platformsdk/sdk/update/win98mexp/en-us/3672.1/msisdk-common.3.0.cab'
  checksum               = '572784a1e94798d56200b8c4d4a170f2d4bc490774c4b5fb9e90c00958c9558f'
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
