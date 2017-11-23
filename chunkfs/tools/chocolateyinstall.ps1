$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  url                    = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/chunking-filesystem/setupChunkFS-0.20.10.exe'
  checksum               = '5ac329c4f38d92108bc9a165cb895cacee1b9da8f36f8aa01e66ff04549426c5'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
