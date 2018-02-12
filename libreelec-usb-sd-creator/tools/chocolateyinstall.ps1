$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\LibreELEC.USB-SD.Creator.exe"
  url                    = 'http://releases.libreelec.tv/LibreELEC.USB-SD.Creator.Win32.exe'
  checksum               = 'c4b75de0612f38d0305fd68f70c95d8863b2d0837517390deee3ec7e95f8600e'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
