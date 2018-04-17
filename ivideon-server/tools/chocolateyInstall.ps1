$ErrorActionPreference = 'Stop'

$silentArgs = "/S /D=${Env:ProgramFiles}\Ivideon\IvideonServer"

$packageArgs = @{
  packageName            = $env:ChocolateyPackageName
  fileType               = 'EXE'
  url                    = 'http://downloads-cdn77.iv-cdn.com/bundles/server/IvideonServer_3.6.1_win32_setup.exe'
  url64bit               = 'http://downloads-cdn77.iv-cdn.com/bundles/server/IvideonServer_3.6.1_win64_setup.exe'
  checksum               = 'ad06184523c98c6ad2959d82fc0550bc5216e52a29c9544821948a241846a1bd'
  checksum64             = 'e26738e70fb6e148f9831f3cfb84935fe91e2b04221465f1dd96a52a0792ccf3'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = $silentArgs
  validExitCodes         = @(0)
  softwareName           = 'Ivideon Server*'
}
Install-ChocolateyPackage @packageArgs
