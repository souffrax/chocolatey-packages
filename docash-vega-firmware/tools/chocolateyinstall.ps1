$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://www.docash.ru/data/file/Soft%20DoCash%20Vega/EC330_YES_NO_UV_v29_20171109.zip'
  UnzipLocation          = "$toolsDir"
  checksum               = '957218dacd2f8b2fece3293757e4caf1347bb9174a04499e5970159b0a899a7b'
  checksumType           = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

mv "$toolsDir\EC330_YES_NO_UV_v29_20171109\EC330_YES_NO_UV_v29_20171109.tmp" "$toolsDir\EC330_YES_NO_UV_v29_20171109\EC330_YES_NO_UV_v29_20171109.exe"
