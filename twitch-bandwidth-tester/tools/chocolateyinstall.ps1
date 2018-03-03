$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://r1ch.net/assets/twitchtest/twitchtest-1.4.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '593e81b4d11446a6237c9346ef747bfb233a7bbb04948968f0d56ae22a9fae66'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
