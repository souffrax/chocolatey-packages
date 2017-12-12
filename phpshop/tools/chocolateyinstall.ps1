#Server geneate installer executable on-the-fly, so no checksums
Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '' 'http://www.phpshop.ru/loads/files/setup.exe' -Checksum '5234c8705b2bc3bb42119841397b96cf5b8e9e702edfcd9838db6f6e125f2320' -ChecksumType 'sha256'
