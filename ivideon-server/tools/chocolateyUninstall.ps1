$ErrorActionPreference = 'Stop'

# *** Automatically filled ***
$packageName    = $env:ChocolateyPackageName
$softwareName   = "IvideonServer"
$fileType       = 'EXE'
$silentArgs     = '/S'
$file           = "${Env:ProgramFiles}\Ivideon\IvideonServer\Uninstall.exe"
$validExitCodes = @(0)
# *** Automatically filled ***

if (Get-Process $softwareName -ea SilentlyContinue) {Stop-Process -processname $softwareName}
Uninstall-ChocolateyPackage -PackageName $packageName `
                                        -FileType $fileType `
                                        -SilentArgs $silentArgs `
                                        -ValidExitCodes $validExitCodes `
                                        -File $file
Remove-Item "${Env:ProgramFiles}\Ivideon" -Force  -Recurse -ErrorAction SilentlyContinue
