$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'https://www.radmin.com/download/Radmin_Server_3.5.2.1_EN.msi'
  checksum               = '85844ae7394f2cf907b6378b415e77f7e29069c7e791598cf0985adf4f53320e'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
