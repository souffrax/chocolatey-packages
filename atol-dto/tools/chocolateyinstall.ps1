# According to https://stackoverflow.com/q/7330187
 
# [System.Environment]::OSVersion.Version
# - does not show [Windows 10 release](https://en.wikipedia.org/wiki/Windows_10_version_history)
# - does not differentiate between Windows 8.1 (6.3.9600) and Windows 8 (6.2.9200)
# - [deprecated](https://blogs.technet.microsoft.com/heyscriptingguy/2014/04/25/use-powershell-to-find-operating-system-version/)
 
# [Environment]::OSVersion is same as previous
 
# Get-WmiObject Win32_OperatingSystem
# - does not show [Windows 10 release](https://en.wikipedia.org/wiki/Windows_10_version_history)
# - [deprecated](https://blogs.technet.microsoft.com/heyscriptingguy/2014/04/25/use-powershell-to-find-operating-system-version/)
 
# Get-CimInstance Win32_OperatingSystem
# - does not show [Windows 10 release](https://en.wikipedia.org/wiki/Windows_10_version_history)
 
# Get-ComputerInfo is PowerShell 5+

function getFoldername{
    $windowsVersion = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
	$bitness = Get-ProcessorBits
	if ($bitness -eq 32) {
		$bitness = 86
	}
	if ($windowsVersion.CurrentMajorVersionNumber -ge 10) {
		return "W10_x$bitness"
	} else {
		return "W7W8_x$bitness"
	}
}

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://fs.atol.ru/_layouts/15/atol.templates/Handlers/FileHandler.ashx?guid=60f20357-ffcc-452e-bc46-a5015071d682&webUrl='
  checksum               = 'bd2d034129c68360169648b40612cfe6b2b127883b176dbbd4c9f5b17443a38f'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP\$env:chocolateyPackageName"
}
Install-ChocolateyZipPackage @packageArgs

$foldername = getFoldername

mv "$env:TMP\$env:chocolateyPackageName\*_*_*_9_12_2" "$env:TMP\9_12_2"

$packageArgs = @{
  FileFullPath           = "$env:TMP\9_12_2\installer\Drivers9-KKT-9.12.2.6311-windows32-setup.exe"
  FileFullPath64         = "$env:TMP\9_12_2\installer\Drivers9-KKT-9.12.2.6311-windows64-setup.exe"
  Destination            = "$env:TMP"
  SpecificFolder         = "KKT\USB_Drivers\$foldername"
}
Get-ChocolateyUnzip @packageArgs

(Get-AuthenticodeSignature "$env:TMP\KKT\USB_Drivers\$foldername\atol-usbcom.cat").SignerCertificate | Export-Certificate -FilePath "$env:TMP\atol-usbcom.cer"
 
Import-Certificate -FilePath "$env:TMP\atol-usbcom.cer" -CertStoreLocation Cert:\LocalMachine\TrustedPublisher

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S'
  File                   = "$env:TMP\9_12_2\installer\Drivers9-KKT-9.12.2.6311-windows32-setup.exe"
  File64                 = "$env:TMP\9_12_2\installer\Drivers9-KKT-9.12.2.6311-windows64-setup.exe"
}
Install-ChocolateyInstallPackage @packageArgs
