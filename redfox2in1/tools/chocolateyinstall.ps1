$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://ftp.lissi.ru/SeaMonkey_2.39_GOST/SeaMonkey-2.39_GOST_WIN32.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '4bcf9877ba0ef1f7c64389a6a12595ce59dd4232fbeeda805a52f3c7c4230cc3'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
