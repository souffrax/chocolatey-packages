#Server geneate installer executable on-the-fly, so no checksums
Install-ChocolateyPackage "$env:chocolateyPackageName" 'exe' '' 'https://rfr.agent.mail.ru/magent.exe'
