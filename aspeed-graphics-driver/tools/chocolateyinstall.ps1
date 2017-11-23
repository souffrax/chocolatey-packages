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

function getFilename{
    $windowsVersion = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
    if ($windowsVersion.InstallationType -eq 'Server') {
        if ($windowsVersion.CurrentMajorVersionNumber -ge 10) {
            return 'Win2016.msi'
        } elseif ([double]$windowsVersion.CurrentVersion -ge 6.3) {
            return 'Win2012R2.msi'
        } else {
            return 'Win2012.msi'
        }
    } else {
        $bitness = Get-OSArchitectureWidth
        if ($windowsVersion.CurrentMajorVersionNumber -ge 10) {
            if ($windowsVersion.ReleaseId -ge 1607) {
                return "Win10_x$bitness(1607).msi"
            } else {
                return "Win10_x$bitness.msi"
            }
        } elseif ([double]$windowsVersion.CurrentVersion -ge 6.3) {
            return "Win81_x$bitness.msi"
        } else {
            return "Win8_x$bitness.msi"
        }
    }
}

$filename = getFilename

echo $filename

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'http://upload.aspeedtech.com/BIOS/Windows_v105_whql.zip'
  UnzipLocation          = "$env:TMP"
  checksum               = 'bafaa3df2c5f1fcf6ab9004e5415c6cadf6ec992a97f6abc7f5d54a3522818ea'
  checksumType           = 'sha256'
  SpecificFolder         = "v105_whql\WDDM Installer\$filename"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  File                   = "$env:TMP\v105_whql\WDDM Installer\$filename"
}
Install-ChocolateyInstallPackage @packageArgs
