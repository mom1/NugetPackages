$version = "5.0.1"
$packageName = "transgui"
$installerType = "exe"
$url = "https://transmisson-remote-gui.googlecode.com/files/transgui-$version-setup.exe"
$silentArgs = "/silent"

try {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
    }
catch { Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
throw 
}
