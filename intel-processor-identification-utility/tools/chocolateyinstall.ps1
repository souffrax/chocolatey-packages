# According to https://stackoverflow.com/a/4894634

$urls = @{'en'='https://downloadmirror.intel.com/7838/eng/pidenu47.msi',
'de'='https://downloadmirror.intel.com/7838/deu/piddeu47.msi',
'ru'='https://downloadmirror.intel.com/7838/rus/pidrus47.msi',
'pt'='https://downloadmirror.intel.com/7838/por/pidptb47.msi',
'ko'='https://downloadmirror.intel.com/7838/kor/pidkor47.msi',
'ja'='https://downloadmirror.intel.com/7838/jpn/pidjpn47.msi',
'it'='https://downloadmirror.intel.com/7838/ita/pidita47.msi',
'fr'='https://downloadmirror.intel.com/7838/fra/pidfra47.msi',
'es'='https://downloadmirror.intel.com/7838/spa/pidesn47.msi',
'zh_CN'='https://downloadmirror.intel.com/7838/zht/pidcht47.msi',
'zh_SG'='https://downloadmirror.intel.com/7838/zht/pidcht47.msi',
'zh_TW'='https://downloadmirror.intel.com/7838/zho/pidchs47.msi',
'zh_HK'='https://downloadmirror.intel.com/7838/zho/pidchs47.msi',
'zh-mo'='https://downloadmirror.intel.com/7838/zho/pidchs47.msi'}

# $packageArgs = @{
  # packageName            = "$env:chocolateyPackageName"
  # FileType               = 'msi'
  # SilentArgs             = '/qn /norestart'
  # url                    = 'http://packages.diladele.com/squid/3.5.27/squid.msi'
  # checksum               = 'a5bbc48e3b2b274a6625cd29b605b21b1b9241b319d3d1423fcc6baf9ebcaa66'
  # checksumType           = 'sha256'
# }
# Install-ChocolateyPackage @packageArgs
