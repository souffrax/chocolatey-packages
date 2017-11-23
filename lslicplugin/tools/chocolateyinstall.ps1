$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'http://soft.lissi.ru/docs/plugin_license/LSLicPlugin_setup.exe'
  checksum               = '5965b0bc5452b76566faebe49785d46bf72c43735b82a0830669c7bd713c6702'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
