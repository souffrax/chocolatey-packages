$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://teleofis.ru/php/download.php?f=1476'
  checksum               = '37d6ce4b4f3909899297e7d0ffd74e76a89d6fd5bc813bdb9899628f23a9f4cc'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

(Get-AuthenticodeSignature "$env:TMP\officegate.cat").SignerCertificate | Export-Certificate -FilePath "$env:TMP\JSCTeleofis.cer"

Import-Certificate -FilePath "$env:TMP\JSCTeleofis.cer" -CertStoreLocation Cert:\LocalMachine\TrustedPublisher

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = "-i -a `"$env:TMP\OfficeGate.inf`""
  File                   = "$env:windir\system32\pnputil.exe"
}
Install-ChocolateyInstallPackage @packageArgs
