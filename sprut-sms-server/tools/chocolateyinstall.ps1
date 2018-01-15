Install-ChocolateyZipPackage "$env:chocolateyPackageName" 'http://www.gsm-sprut.com/files/file/SprutUniversal/sms/smsserver.zip' "$env:TMP" -Checksum '70d59ef605cf28d03443c2d17529d045c7c69076007aeb233a24202b482a1cf0' -ChecksumType 'sha256'
Install-ChocolateyInstallPackage "$env:chocolateyPackageName" 'exe' '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' "$env:TMP\sms_server_setup.exe"
