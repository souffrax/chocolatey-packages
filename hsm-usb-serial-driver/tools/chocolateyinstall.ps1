$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://aidc.honeywell.com/CatalogDocuments/HSM%20USB%20Serial%20Driver%20Version%203.5.9.zip'
  checksum               = 'e6fb97d1561d39225250a86333fadc9d344c4c3b53a290f299a7e97dd87ac7e6'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = "/c `"$env:TMP\HSM USB Serial Driver Version 3.5.9-WHQL-9-4-2017\setup.bat`" /silent /install /machine"
  File                   = "$env:windir\system32\cmd.exe"
}
Install-ChocolateyInstallPackage @packageArgs
