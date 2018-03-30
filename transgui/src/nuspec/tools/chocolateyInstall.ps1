$ErrorActionPreference = 'Stop';

$version = $env:chocolateyPackageVersion

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    installerType  = 'EXE'
    url            = 'https://github.com/transmission-remote-gui/transgui/releases/download/v$version/transgui-$version-setup.exe'
    url64bit       = 'https://github.com/transmission-remote-gui/transgui/releases/download/v$version/transgui-$version-setup.exe'
    checksum       = '6112BBE09FEF0CC153C6F518BDEB661EC1E29EBC222D2AB4C35B5AE484AECF2F'
    checksum64     = '6112BBE09FEF0CC153C6F518BDEB661EC1E29EBC222D2AB4C35B5AE484AECF2F'
    checksumType   = 'sha256'
    checksumType64 = 'sha256'
    silentArgs     = '/silent /verysilent'
    validExitCodes = @(0, 1603)
}
Install-ChocolateyPackage @packageArgs
