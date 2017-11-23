$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'https://international.download.nvidia.com/geforce-com/international/applications/Badaboom_Setup_Trial_2.0.exe'
  checksum               = '09584ed9899973f730d2671444b613a948c7c5b43752b98d6b22dac06fac1c46'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
