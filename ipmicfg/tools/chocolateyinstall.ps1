$bitness = Get-ProcessorBits
$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'ftp://ftp.supermicro.com/utility/IPMICFG/IPMICFG_1.27.1_build.170901.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = 'ef9518458c78d6adea87a6d8e3c8030d340e3481a167b4a96691da862a5271d5'
  checksumType           = 'sha256'
  SpecificFolder         = "IPMICFG_1.27.1_build.170901\Windows\${bitness}bit"
}
Install-ChocolateyZipPackage @packageArgs
