$version = "5.0.1"
$packageName = 'transgui'
$installerType = 'EXE'
$url = "https://sourceforge.net/projects/transgui/files/$version/transgui-$version-setup.exe/download"
$silentArgs = '/silent' 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"