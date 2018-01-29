$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://www.radmin.com/download/Radmin_Viewer_3.5.2.1_Port.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '713717ef81fab2adadbc18eec46555347c32f33e18f9ceceb71919b884dcdc77'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
