$packageArgs = @{
    packageName = 'PuntoSwitcher'
    installerType = 'EXE'
    url = 'https://download.cdn.yandex.net/punto/PuntoSwitcherSetup_441.exe'
    checksum = 'E51449085AA86932DA8D30907AC8C18A2915774C6D1D99BA4C81757BF464A802'
    checksumType = 'sha256'
    silentArgs = '/quiet'
    validExitCodes = @(0)
}
Install-ChocolateyPackage $packageArgs
