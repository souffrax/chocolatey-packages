$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  ValidExitCodes         = @(1603)
}
Uninstall-ChocolateyPackage @packageArgs
