$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'http://www.proxycap.com/download/pcap529_x86.msi'
  url64                  = 'http://www.proxycap.com/download/pcap529_x64.msi'
  checksum               = '9cfb21b286ba56bcb799c5460ff6a4f9752ad87584b5f7aa30f432d92470bf0f'
  checksum64             = '520396e2939088295e175ca353409a7f5d7666e4eb9bc92f27766d2e8ab7f69b'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyPackage @packageArgs
