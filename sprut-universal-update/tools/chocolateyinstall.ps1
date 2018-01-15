$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.gsm-sprut.com/files/file/SprutUniversal/v.2.72.60.rar'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '53ab0d4188512a2364f3099f98da8aa072df46bedd1a61d2b9b4eb9bb1b76f74'
  checksumType           = 'sha256'
  SpecificFolder         = 'V2\Прошивка'
}
Install-ChocolateyZipPackage @packageArgs
