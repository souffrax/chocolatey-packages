$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.wsgf.org/downloads/uniws.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = 'c14f35e5bfe65cdda8de74e160183c0c6bf0602413bc32c26af0a3473e5a5c18'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
