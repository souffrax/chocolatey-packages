$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://home-lib.net/download/myhomelib/MyHomeLib_2_2.rar'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '9fcba3545d8210ea0f646fe78f040eb52dadb779481d21f691f56e846f885b36'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
