$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/nowait'
  url                    = 'https://help.kontur.ru/content/components/Certificates_Kontur_Admin.exe'
  checksum               = 'aee64989ab5a25e079210036b595fd364669aa9b4a83e7c4feaeafb6c30d324a'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
