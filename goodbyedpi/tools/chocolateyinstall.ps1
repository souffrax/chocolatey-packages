if (Get-OSArchitectureWidth -eq 64) {
$subfolder = '_64'
}
Install-ChocolateyZipPackage "$env:chocolateyPackageName" 'https://github.com/ValdikSS/GoodbyeDPI/releases/download/0.1.4/goodbyedpi-0.1.4.zip' "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" -Checksum '0c834614e884b5840f6d2c52ed2815ef9544cfe305e30da8c3f9c9fad7d59315' -ChecksumType 'sha256' -SpecificFolder "goodbyedpi-0.1.4/x86$subfolder"
