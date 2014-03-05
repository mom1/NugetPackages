$packageName = 'puntoswitcher'
$installerType = 'exe'
$url = 'http://download.cdn.yandex.net.cache-default02e.cdn.yandex.net/punto/PuntoSwitcherSetup.exe'
$silentArgs = '/quiet'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
    }
catch { Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
throw 
}
