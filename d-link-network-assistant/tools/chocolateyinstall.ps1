$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'ftp://ftp2.dlink.com/SOFTWARE/D-LINK_NETWORK_ASSISTANT/DNA_UTILITY_2.0.2.4_WIN_WW.ZIP'
  checksum               = 'ceca6b8a29c7a0c5f61cb4523f7ad32ec45a07b495f059afe07c05397986ac61'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
  SpecificFolder         = 'DNA_UTILITY_2.0.2.4_Setup.msi'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\DNA_UTILITY_2.0.2.4_Setup.msi"
}
Install-ChocolateyInstallPackage @packageArgs
