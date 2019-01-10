$ErrorActionPreference = 'Stop'

$silentArgs = "/S /D=${Env:ProgramFiles}\Ivideon\IvideonServer"

$packageArgs = @{
  packageName            = $env:ChocolateyPackageName
  fileType               = 'EXE'
  url                    = 'http://downloads-cdn77.iv-cdn.com/bundles/server/IvideonServer_3.7.0_win32_setup.exe'
  url64bit               = 'http://downloads-cdn77.iv-cdn.com/bundles/server/IvideonServer_3.7.0_win64_setup.exe'
  checksum               = 'd2561195a1bdc7065e366f205574e1f363c415adf62097f7f28e5d577c35fff6'
  checksum64             = '0a39c82952ce60a19c8090400b50440c99183c3918e0881b4706ee9dab79a076'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = $silentArgs
  validExitCodes         = @(0)
  softwareName           = 'Ivideon Server*'
}
Install-ChocolateyPackage @packageArgs
