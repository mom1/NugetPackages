$packageName = 'PuntoSwitcher'
$installerType = 'EXE'
$url = 'https://download.cdn.yandex.net/punto/PuntoSwitcherSetup_410.exe'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes