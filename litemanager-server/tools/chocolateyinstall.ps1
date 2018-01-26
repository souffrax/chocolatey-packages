Install-ChocolateyZipPackage "$env:chocolateyPackageName" 'http://litemanager.com/soft/litemanager_4.8.zip' "$env:TMP" -Checksum '5e27c47fac38ef31467776b3872a2033c599d3cbd91cfbd5109e84509f0e14b2' -ChecksumType 'sha256'
Install-ChocolateyInstallPackage "$env:chocolateyPackageName" 'msi' '/qn /norestart' "$env:TMP\LiteManager Pro - Server.msi"
