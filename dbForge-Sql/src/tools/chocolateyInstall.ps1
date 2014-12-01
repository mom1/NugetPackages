$packageName = 'dbforge-sql'
$installerType = 'EXE'
$urlru = 'http://www.devart.com/dbforge/sql/studio/dbforgesqlru.exe'
$urleng = 'http://www.devart.com/dbforge/sql/studio/dbforgesqlfree.exe'
$silentArgs = '/verysilent'
$validExitCodes = @(0)
$locale = (Get-Culture).LCID

if ($locale -eq 1049) {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlru" -validExitCodes $validExitCodes
} else {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urleng" -validExitCodes $validExitCodes
}