$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/7/2/C/72C7BAB7-2F32-4530-878A-292C20E1845A/WindowsXPMode_en-us.exe'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '0388d943f037c832fc205f514f1c1c1f076963b1a9249af05b3bd001f09e713f'
  checksumType           = 'sha256'
  SpecificFolder         = 'sources\xpm'
}
Install-ChocolateyZipPackage @packageArgs

mv "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\sources\xpm" "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\sources\xpm.vhd"
