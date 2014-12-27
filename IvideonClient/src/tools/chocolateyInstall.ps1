$packageName = 'IvideonClient'
$installerType = 'EXE'
$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
$url = "http://downloads-cdn77.iv-cdn.com/bundles/client/IvideonClient_5.7.0_win32_setup.exe"
if ($is64bit) {
  $silentArgs = "/S /D=${Env:ProgramFiles(x86)}\Ivideon\IvideonClient"
} else {
  $silentArgs = "/S /D=${Env:ProgramFiles}\Ivideon\IvideonClient"
}
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes