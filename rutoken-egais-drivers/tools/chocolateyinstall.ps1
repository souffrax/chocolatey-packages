$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/install /quiet /norestart'
  url                    = 'https://download.rutoken.ru/Rutoken/Drivers_Egais/4.3.2.0_01.02.2018/rtDrivers.exe'
  checksum               = '26d2e6cfaced874d9d9579c4b4f61bdcb28c938836da7e1b5f1b48fcfe4e2cea'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
