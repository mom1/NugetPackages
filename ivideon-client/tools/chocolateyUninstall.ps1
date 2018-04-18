$ErrorActionPreference = 'Stop'

# *** Automatically filled ***
$packageName    = $env:ChocolateyPackageName
$softwareName   = "IvideonClient"
$fileType       = 'EXE'
$silentArgs     = '/S'
$file           = "${Env:ProgramFiles}\Ivideon\IvideonClient\Uninstall.exe"
$validExitCodes = @(0)
# *** Automatically filled ***

if (Get-Process $softwareName -ea SilentlyContinue) {Stop-Process -processname $softwareName}
Uninstall-ChocolateyPackage -PackageName $packageName `
                                        -FileType $fileType `
                                        -SilentArgs $silentArgs `
                                        -ValidExitCodes $validExitCodes `
                                        -File $file
Remove-Item "${Env:ProgramFiles}\Ivideon\IvideonClient" -Force  -Recurse -ErrorAction SilentlyContinue
