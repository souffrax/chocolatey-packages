$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://files.scene.org/get/parties/2004/breakpoint04/96kgame/kkrieger-beta.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '0de0b9abafd78cf7f57fb264c7136ace52b2653f5c675574d0f10eda0a654c9f'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
