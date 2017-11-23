$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://download.from.zyxel.ru/55c9279a-44dd-4244-90ff-aa0ec4fa8dd7/3G_Modem_Mode_Switcher_1.0.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '29b69d9878e1b31570b6fb4e9db4f2b2a658e5ed12d0b4c7a13dc8622497f04c'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
