$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'http://home-lib.net/download/myhomelib/Setup_MyHomeLib_2_2.exe'
  checksum               = 'a2debd3df212bdf883c9124136d404a99957f509c30337cbf1bacf3138878457'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
