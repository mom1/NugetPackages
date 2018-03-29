$version = "5.15.2"
$packageArgs = @{
    packageName = 'transgui'
    installerType = 'EXE'
    url = "https://github.com/transmission-remote-gui/transgui/releases/download/v$version/transgui-$version-setup.exe"
    checksum = '6112BBE09FEF0CC153C6F518BDEB661EC1E29EBC222D2AB4C35B5AE484AECF2F'
    checksumType = 'sha256'
    silentArgs = '/silent'
}
Install-ChocolateyPackage $packageArgs