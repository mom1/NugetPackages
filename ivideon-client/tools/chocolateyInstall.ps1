$ErrorActionPreference = 'Stop'

$silentArgs = "/S /D=${Env:ProgramFiles}\Ivideon\IvideonClient"

$packageArgs = @{
  packageName            = $env:ChocolateyPackageName
  fileType               = 'EXE'
  url                    = 'http://downloads-cdn77.iv-cdn.com/bundles/client/IvideonClient_6.7.1_win32_setup.exe'
  url64bit               = 'http://downloads-cdn77.iv-cdn.com/bundles/client/IvideonClient_6.7.1_win32_setup.exe'
  checksum               = '14fbad46f10142660bd15a939b92a20d5375c3b332a954ee08d0f61ddb65d145'
  checksum64             = '14fbad46f10142660bd15a939b92a20d5375c3b332a954ee08d0f61ddb65d145'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = $silentArgs
  validExitCodes         = @(0)
  softwareName           = 'Ivideon Client*'
}
Install-ChocolateyPackage @packageArgs
