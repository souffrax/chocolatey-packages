$options =
@{
  Headers = @{
    'User-Agent' = 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36';
  }
}

Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '-silent -norestart' 'https://www.cryptopro.ru/products/cades/plugin/get' -Checksum 'c27a2fb679eec98c4517e6e76a3f901bea9ba4e51ddfac7efdeb0014dd3b8408' -ChecksumType 'sha256' -Options $options
