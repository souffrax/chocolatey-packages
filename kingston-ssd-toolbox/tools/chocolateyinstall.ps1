$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '-i console'
  url                    = 'https://media.kingston.com/support/downloads/KingstonSSDToolbox.exe'
  checksum               = 'e8549412b862be8711447cc6449459d17fb512a9c258d72c17d6188488a3648a'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
