$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://ftp.lissi.ru/THUNDERBIRD_52/WIN32/Mozilla_Thunderbird_52.0_gost_WIN32.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '7cc3709d179092494440eb52b1cf2fdf04698b852e337273c123781fbd49dc75'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
