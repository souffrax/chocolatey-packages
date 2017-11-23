$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\tuxboot.exe"
  url                    = 'https://downloads.sourceforge.net/project/tuxboot/0.8/Windows/tuxboot-0.8.3.exe'
  checksum               = '7c7149929f5dd28ab32ba96a7c966a3727a9acce9ac70731187cfd05d0c3c7fa'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
