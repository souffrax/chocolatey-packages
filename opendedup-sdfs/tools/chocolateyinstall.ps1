$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'http://opendedup.org/odd/wp-content/uploads/2017/12/SDFS-3.5.8.5-Setup.exe'
  checksum               = '6671459d4aab9c1113662c1ab84ba7856c040e9fb2acdac63dee5678ac8c069e'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
