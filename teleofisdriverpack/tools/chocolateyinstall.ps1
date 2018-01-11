Get-ChocolateyWebFile -PackageName "$env:chocolateyPackageName" -FileFullPath "$env:TMP\TeleofisDriverPack 2.2.zip" -Url 'https://teleofis.ru/php/download.php?f=1516' -Checksum 'e7e22e95ce68f78c1bb4346da4831591074496afe3540e13dcfb77284292c201' -ChecksumType 'sha256'

Get-ChocolateyUnzip -FileFullPath "$env:TMP\TeleofisDriverPack 2.2.zip" -Destination "$env:TMP"

Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '/S' "$env:TMP\TeleofisDriverPack-2.2.exe" -Checksum 'ba007e410b59261bd2ca795611b2ba560122f985eb065a7d355c24b85236bb08' -ChecksumType 'sha256'