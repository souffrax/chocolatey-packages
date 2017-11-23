git clone https://github.com/fkalis/bash-onedrive-upload.git "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\$env:chocolateyPackageName"
cd "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\$env:chocolateyPackageName"
git checkout 4419a7ffa9e227fcf225643a960a6f881edab363
git submodule update --init --recursive
