$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://downloads.sourceforge.net/project/grub4dos/grubinst/grubinst%201.0.1/grubinst_1.0.1_bin_win.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = 'dd1cf6b26aeaf1214036728b9a892b96d53e116d4ff9c194b2ad18850d080def'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
