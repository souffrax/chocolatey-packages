$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'https://www.advanced-ip-scanner.com/download/Advanced_IP_Scanner_2.5.3499.exe'
  checksum               = '73a638af070b53749e9a81c95efc78449c2ac12f186c0240c14b398666f091dd'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
