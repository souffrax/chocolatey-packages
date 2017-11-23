$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'https://download01.logi.com/web/ftp/pub/video/lws/lws280.exe'
  checksum               = 'a9cbba5638bea99f1d760dd979819026b5969bf7a4dd3591e3fa9639fab22142'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
