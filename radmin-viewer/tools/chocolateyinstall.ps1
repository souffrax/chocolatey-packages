$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'https://www.radmin.com/download/Radmin_Viewer_3.5.2.1_EN.msi'
  checksum               = '219297c19fcd91e88a6c0d5c6055370ee185ae97d1462c7ecabff2d586cf471f'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
