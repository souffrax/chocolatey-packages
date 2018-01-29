$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'http://cdn.bullzip.com/download/pdf_free/Setup_BullzipPDFPrinter_11_4_0_2674_FREE.exe'
  checksum               = 'a1b970e2173b79b9543ffe7ec33ac3931117f71cb14125ffe56df9e1a32d1b79'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
