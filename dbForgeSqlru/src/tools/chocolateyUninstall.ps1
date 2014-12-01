$package = 'dbForgeSqlru'

try {
  $unpath = "${Env:ProgramFiles}\Devart\dbForge Studio for SQL Server\Uninstall\unins000.exe"
  Uninstall-ChocolateyPackage "$package" 'EXE' '/SILENT' "$unpath"
  
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw 
}