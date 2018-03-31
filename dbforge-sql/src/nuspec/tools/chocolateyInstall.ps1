$ErrorActionPreference = 'Stop';

$urlru = 'https://www.devart.com/ru/dbforge/sql/studio/dbforgesql55ru.exe'
$urleng = 'https://www.devart.com/dbforge/sql/studio/dbforgesql55exp.exe'
$checksumru = 'AFBFC9ADDF27F25D06A3F57E9113A1336EB198422E535AB916400996AFD0FB7B'
$checksumen = '0B0208094ED503529E49EE832B4FAB5256EF500640134553721019F5B83E094D'
$locale = (Get-Culture).LCID

if ($locale -eq 1049) {
    $url = $urlru
    $checksum = $checksumru
} else {
    $url = $urleng
    $checksum = $checksumen
}

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    installerType  = 'EXE'
    url            = $url
    url64bit       = $url
    checksum       = $checksum
    checksum64     = $checksum
    checksumType   = 'sha256'
    checksumType64 = 'sha256'
    silentArgs     = '/verysilent'
    validExitCodes = @(0, 1603)
}
Install-ChocolateyPackage @packageArgs
