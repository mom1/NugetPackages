$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
  $unpath = "${Env:ProgramFiles(x86)}\Ivideon\IvideonServer\Uninstall.exe"
  $undir  = "/D=${Env:ProgramFiles(x86)}\Ivideon\IvideonServer"
} else {
  $unpath = "${Env:ProgramFiles}\Ivideon\IvideonServer\Uninstall.exe"
  $undir  = "/D=${Env:ProgramFiles}\Ivideon\IvideonServer"
}
Uninstall-ChocolateyPackage 'Ivideon' 'EXE' '/S' "$unpath"