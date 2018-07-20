$ErrorActionPreference = 'Stop';

$packageName = 'golang'
$url = 'https://dl.google.com/go/go1.11beta2.windows-386.zip'
$checksum = '674b3fcdc6a7a90e2956531e9c3d903c4e0ba07eb28226c5333b6b2c36b34879'
$url64 = 'https://dl.google.com/go/go1.11beta2.windows-amd64.zip'
$checksum64 = '91072cdc2cbf7b0e94c5706aea86e09d4a044aa6b60f4db4c0869ca29a8befa4'

Get-ToolsLocation
$tools = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$goroot = Join-Path "$tools" 'go'
$gorootBin = Join-Path "$goroot" 'bin'
if (Test-Path "$goroot") {
  Remove-Item "$goroot" -Recurse
}

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$tools" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType 'sha256' -Checksum64 "$checksum64" -ChecksumType64 'sha256'

Install-ChocolateyEnvironmentVariable -VariableName 'GOROOT' -VariableValue "$goroot" -VariableType 'Machine'
