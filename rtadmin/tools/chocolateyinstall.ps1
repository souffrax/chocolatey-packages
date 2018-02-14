$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\rtAdmin.exe"
  url                    = 'https://download.rutoken.ru/Rutoken/Utilites/rtadmin/1.1/windows/x86/rtAdmin.exe'
  checksum               = '0b82d0352a216303b31213634ef80c042f8825fcffbc5d1fd45bcae85f76051d'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
