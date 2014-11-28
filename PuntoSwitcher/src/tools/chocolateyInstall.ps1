$packageName = 'PuntoSwitcher'
$installerType = 'EXE'
$url = 'http://punto.yandex.ru/download/?os=win'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes