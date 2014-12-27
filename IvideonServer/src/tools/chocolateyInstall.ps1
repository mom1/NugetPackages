$packageName = 'IvideonServer'
$installerType = 'EXE'
$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
$url = "http://downloads-cdn77.iv-cdn.com/bundles/server/IvideonServer_3.5.1_win32_setup.exe"
if ($is64bit) {
  $silentArgs = "/S /D=${Env:ProgramFiles(x86)}\Ivideon\IvideonServer"
} else {
  $silentArgs = "/S /D=${Env:ProgramFiles}\Ivideon\IvideonServer"
}
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes