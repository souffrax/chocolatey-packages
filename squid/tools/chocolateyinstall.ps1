$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://squid.acmeconsulting.it/download/squid-2.3.STABLE5-NT-bin-DELAYP.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = 'd51d11ca8087b1e6e411e8faac028f7f59fb1591ac1f700aeaf52deb8bf969b1'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
