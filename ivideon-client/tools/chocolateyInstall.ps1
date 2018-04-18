$ErrorActionPreference = 'Stop'

$silentArgs = "/S /D=${Env:ProgramFiles}\Ivideon\IvideonClient"

$packageArgs = @{
  packageName            = $env:ChocolateyPackageName
  fileType               = 'EXE'
  url                    = 'http://downloads-cdn77.iv-cdn.com/bundles/client/IvideonClient_6.5.1_win32_setup.exe'
  url64bit               = 'http://downloads-cdn77.iv-cdn.com/bundles/client/IvideonClient_6.5.1_win32_setup.exe'
  checksum               = '879CD03BA811BC0233B2E01E5FCFA254BDAC2B5F18BEF8578CFBB25B1B280FC1'
  checksum64             = '879CD03BA811BC0233B2E01E5FCFA254BDAC2B5F18BEF8578CFBB25B1B280FC1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = $silentArgs
  validExitCodes         = @(0)
  softwareName           = 'Ivideon Client*'
}
Install-ChocolateyPackage @packageArgs
