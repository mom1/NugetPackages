$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
  $unpath = "${Env:ProgramFiles(x86)}\Ivideon\IvideonClient\Uninstall.exe"
} else {
  $unpath = "${Env:ProgramFiles}\Ivideon\IvideonClient\Uninstall.exe"
}
Uninstall-ChocolateyPackage 'IvideonClient' 'EXE' '/S' "$unpath"