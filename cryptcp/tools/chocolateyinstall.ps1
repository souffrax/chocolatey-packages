$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\cryptcp.exe"
  url                    = 'https://www.cryptopro.ru/sites/default/files/products/cryptcp/5.0.10804/cryptcp.x86.exe'
  url64bit               = 'https://www.cryptopro.ru/sites/default/files/products/cryptcp/5.0.10804/cryptcp.x64.exe'
  checksum               = '382ed0348ef02a2a739bdbd89a5fdf5ef91168f99ee2c45e67f6b8ac06ac25b2'
  checksum64             = '4e7205538f57916bcc2519ae4c4216e98640a6e3ffdeaa6ef03d54f288f74cc8'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
