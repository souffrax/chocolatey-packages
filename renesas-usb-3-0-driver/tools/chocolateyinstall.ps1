$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/s /sp"/s"'
  url                    = 'https://downloadmirror.intel.com/19880/eng/USB3.0_allOS_2.1.28.1_PV.exe'
  checksum               = '8d13f085128f27c446664b1847efebd02f5383743fd053a9ae6dd05a4c49327d'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
