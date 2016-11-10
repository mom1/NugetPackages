#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one
$version = "5.0.1"
$packageName = 'transgui' # arbitrary name for the package, used in messages
$installerType = 'EXE' #only one of these: exe, msi, msu
$url = "http://downloads.sourceforge.net/project/transgui/$version/transgui-$version-setup.exe?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Ftransgui%2F%3Fsource%3Dtyp_redirect&ts=1478759448&use_mirror=heanet" # download url
$silentArgs = '/silent' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
# $validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

# main helpers - these have error handling tucked into them already
# installer, will assert administrative rights

# if removing $url64, please remove from here
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
