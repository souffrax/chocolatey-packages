$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\rtwUtil.exe"
  url                    = 'https://download.rutoken.ru/Rutoken_Web/utilities/1.4.0.42/Windows/rtwUtil.exe'
  checksum               = 'cdfb56bc92012cb6a99e76018b0edcb037327626c8c8f982d48de7228cee05c5'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
