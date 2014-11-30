$packageName = 'dbForgeSqlru'
$installerType = 'EXE'
$url = 'http://www.devart.com/dbforge/sql/studio/dbforgesqlru.exe'
$silentArgs = '/verysilent'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes