$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://download.from.zyxel.ru/9ee3d63c-f465-4d28-b56b-f96ebf3f6c34/Yota_Jingle_Update_Utility_2.0.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = 'b0efbd4231743835c9829ebe9a3fa934e16c72c9c311fcfff42d3162ae8a80f1'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
