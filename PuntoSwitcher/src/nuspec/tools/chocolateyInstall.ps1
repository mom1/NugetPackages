$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    installerType  = 'EXE'
    url            = 'https://download.cdn.yandex.net/punto/PuntoSwitcherSetup_442.exe'
    url64bit       = 'https://download.cdn.yandex.net/punto/PuntoSwitcherSetup_442.exe'
    checksum       = 'CD337EA4252118AEC42DECAB6720CED96C324EAA006BE21D1BF7BF632D357A76'
    checksum64     = 'CD337EA4252118AEC42DECAB6720CED96C324EAA006BE21D1BF7BF632D357A76'
    checksumType   = 'sha256'
    checksumType64 = 'sha256'
    silentArgs     = '/quiet'
    validExitCodes = @(0, 1603)
}
Install-ChocolateyPackage @packageArgs
