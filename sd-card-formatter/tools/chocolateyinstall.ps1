$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /v"/qn /norestart"'
  url                    = 'https://www.sdcard.org/downloads/formatter_4/eula_windows/SD_CardFormatter0500SetupEN.exe'
  checksum               = '26d2494281ef4bded1c50a64ad2aa9fa5edff38d9a0e708f70fba094f6ba901e'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
