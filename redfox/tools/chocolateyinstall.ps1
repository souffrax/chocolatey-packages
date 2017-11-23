$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://ftp.lissi.ru/FIREFOX_52/WIN32/Mozilla_Firefox_52.0.1esr_GOST_WIN32_.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '5ee5491aa32025f0c25f79e85fcd1b882d5fb27b46acbe3894f1810bc02e91b1'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
