mkdir -f "$env:TMP\$Env:ChocolateyPackageName\$Env:ChocolateyPackageVersion"

echo y > "$env:TMP\$Env:ChocolateyPackageName\$Env:ChocolateyPackageVersion\PSDK-FULL.14.cab"
echo y > "$env:TMP\$Env:ChocolateyPackageName\$Env:ChocolateyPackageVersion\PSDK-FULL.16.cab"

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/5/b/9/5b9fb8b2-9238-491c-878a-0ae7d24591bd/PSDK-FULL.15.cab'
  checksum               = 'c8aab17ec81078ffe169c8839262e83387aaa1d9317d4fabdd45dee4299067b7'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
  SpecificFolder         = 'Setup\PSDK-SDK_MSI_BIN-common.0.cab'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$env:TMP\Setup\PSDK-SDK_MSI_BIN-common.0.cab"
  Destination            = "$env:TMP"
  SpecificFolder         = "Orca_Msi.FD66E721_5AA0_41BC_AA26_1EC8F7FA1175"
}
Get-ChocolateyUnzip @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\Orca_Msi.FD66E721_5AA0_41BC_AA26_1EC8F7FA1175"
}
Install-ChocolateyInstallPackage @packageArgs
