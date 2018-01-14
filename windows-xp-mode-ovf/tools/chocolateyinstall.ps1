$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://download.microsoft.com/download/7/2/C/72C7BAB7-2F32-4530-878A-292C20E1845A/WindowsXPMode_en-us.exe'
  UnzipLocation          = "$env:TMP"
  checksum               = '0388d943f037c832fc205f514f1c1c1f076963b1a9249af05b3bd001f09e713f'
  checksumType           = 'sha256'
  SpecificFolder         = 'sources\xpm'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  FileFullPath           = "$env:TMP\sources\xpm"
  Destination            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  SpecificFolder         = 'VirtualXPVHD'
}
Get-ChocolateyUnzip @packageArgs

mv "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\VirtualXPVHD" "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\VirtualXPVHD.vhd"

VBoxManage createvm --name xpm --register --ostype WindowsXP --uuid b6447b49-fe2f-4c2f-90ec-a9eb23233f94
VBoxManage storagectl b6447b49-fe2f-4c2f-90ec-a9eb23233f94 --name IDE --add ide
VBoxManage storageattach b6447b49-fe2f-4c2f-90ec-a9eb23233f94 --storagectl IDE --medium "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\VirtualXPVHD.vhd" --port 0 --device 0 --type hdd
VBoxManage export b6447b49-fe2f-4c2f-90ec-a9eb23233f94 --output "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\xpm.ovf"
