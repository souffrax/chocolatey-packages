$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/zfs-win/zfs-win-r21.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = 'c4a4ed404ed66a4453193df9e9638d454fcf5b3d26126e7a6d3636fdb933e30e'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
